import com.sun.source.tree.*;
import com.sun.source.util.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;
import javax.tools.*;

/** Parse only. Never load game classes or execute code from the inspected checkout. */
public final class TextSites extends TreePathScanner<Void, Void> {
    final CompilationUnitTree unit;
    final SourcePositions positions;
    final String file, owner;
    final Map<String, ExpressionTree> fields;
    final Map<String, String> routes;
    String method = "", widget = "";
    List<? extends VariableTree> parameters = Collections.emptyList();
    boolean discover;
    Map<String, ExpressionTree> locals = new HashMap<>();
    static final Set<String> LOOKUPS = Set.of("tr", "trf", "fmt", "re", "fromWire");
    static final Set<String> LABELS = Set.of("setText", "setTitle", "setHint", "setMessage",
        "setPositiveButton", "setNegativeButton", "setNeutralButton", "setContentDescription",
        "drawText", "makeText", "addTextToTextWaitingQueue", "setItems", "setSingleChoiceItems");

    TextSites(CompilationUnitTree unit, SourcePositions positions, Path root,
              Map<String, ExpressionTree> fields, Map<String, String> routes) {
        this.unit = unit;
        this.positions = positions;
        file = root.relativize(Paths.get(unit.getSourceFile().toUri())).toString();
        owner = Paths.get(file).getFileName().toString().replace(".java", "");
        this.fields = fields;
        this.routes = routes;
    }

    void emit(String kind, Tree t, String value) {
        if (discover) return;
        long line = unit.getLineMap().getLineNumber(positions.getStartPosition(unit, t));
        String encoded = Base64.getEncoder().encodeToString(value.getBytes(StandardCharsets.UTF_8));
        System.out.println(kind + "\t" + file + ":" + line + "\t" + widget + "\t" + encoded);
    }

    @Override public Void visitMethod(MethodTree t, Void v) {
        String previous = method;
        List<? extends VariableTree> saved = parameters;
        Map<String, ExpressionTree> outerLocals = locals;
        locals = new HashMap<>();
        parameters = t.getParameters();
        method = owner + "." + t.getName() + "/" + parameters.size();
        super.visitMethod(t, v);
        method = previous;
        parameters = saved;
        locals = outerLocals;
        return null;
    }

    @Override public Void visitLiteral(LiteralTree t, Void v) {
        if (t.getValue() instanceof String) emit("literal", t, (String)t.getValue());
        return null;
    }

    @Override public Void visitBlock(BlockTree t, Void v) {
        Map<String, ExpressionTree> outer = locals;
        locals = new HashMap<>(outer);
        super.visitBlock(t, v);
        locals = outer;
        return null;
    }

    @Override public Void visitVariable(VariableTree t, Void v) {
        super.visitVariable(t, v);
        if (!method.isEmpty()) {
            String name = t.getName().toString();
            // A mutable local shadows a field, even when we cannot resolve its value.
            locals.put(name, t.getModifiers().getFlags().contains(javax.lang.model.element.Modifier.FINAL)
                ? t.getInitializer() : null);
        }
        return null;
    }

    ExpressionTree constant(ExpressionTree t) {
        String name = t.toString();
        if (t instanceof IdentifierTree) {
            if (locals.containsKey(name)) return locals.get(name);
            name = owner + "." + name;
        }
        return fields.get(name);
    }

    // Follow literal alternatives, final fields and array elements. Propagate whole
    // parameter forwards to known helper call sites during the discovery pass.
    void inspect(ExpressionTree t, Tree site, String kind, Set<Tree> path) {
        if (t == null || !path.add(t)) return;
        if (t instanceof LiteralTree) {
            Object value = ((LiteralTree)t).getValue();
            if (value instanceof String) emit(kind, site, (String)value);
        } else if (t instanceof ParenthesizedTree) {
            inspect(((ParenthesizedTree)t).getExpression(), site, kind, path);
        } else if (t instanceof ConditionalExpressionTree) {
            ConditionalExpressionTree c = (ConditionalExpressionTree)t;
            // Existing hand-localized alternatives already choose by the runtime language.
            if (c.getCondition().toString().matches("!?(ModLang\\.)?spanish\\(\\)")) return;
            inspect(c.getTrueExpression(), site, kind, path);
            inspect(c.getFalseExpression(), site, kind, path);
        } else if (t instanceof NewArrayTree && ((NewArrayTree)t).getInitializers() != null) {
            for (ExpressionTree e : ((NewArrayTree)t).getInitializers()) inspect(e, site, kind, path);
        } else if (t instanceof ArrayAccessTree) {
            Deque<ExpressionTree> indices = new ArrayDeque<>();
            ExpressionTree base = t;
            while (base instanceof ArrayAccessTree) {
                ArrayAccessTree access = (ArrayAccessTree)base;
                indices.addFirst(access.getIndex());
                base = access.getExpression();
            }
            ExpressionTree initializer = constant(base);
            if (initializer instanceof NewArrayTree)
                inspectArray(initializer, new ArrayList<>(indices), 0, site, kind, path);
            else inspect(base, site, kind, path);
        } else if (t instanceof IdentifierTree || t instanceof MemberSelectTree) {
            int index = -1;
            for (int i = 0; i < parameters.size(); i++)
                if (parameters.get(i).getName().contentEquals(t.toString())) index = i;
            if (index >= 0) {
                if (discover) {
                    String k = method + "#" + index;
                    if (kind.equals("key") || !routes.containsKey(k)) routes.put(k, kind);
                }
                emit("dynamic-" + kind, site, method);
            } else if (constant(t) != null) inspect(constant(t), site, kind, path);
            else emit("dynamic-" + kind, site, method);
        } else if (!kind.equals("key") && t.getKind() == Tree.Kind.PLUS) {
            BinaryTree b = (BinaryTree)t;
            inspect(b.getLeftOperand(), site, "fragment", path);
            inspect(b.getRightOperand(), site, "fragment", path);
        } else if (t instanceof MethodInvocationTree &&
                ((MethodInvocationTree)t).getMethodSelect().toString().equals("Html.fromHtml")) {
            inspect(((MethodInvocationTree)t).getArguments().get(0), site, kind, path);
        } else {
            emit("dynamic-" + kind, site, method);
        }
        path.remove(t);
    }

    void inspectArray(ExpressionTree value, List<ExpressionTree> indices, int depth,
                      Tree site, String kind, Set<Tree> path) {
        if (depth == indices.size() || !(value instanceof NewArrayTree)) {
            inspect(value, site, kind, path);
            return;
        }
        var choices = ((NewArrayTree)value).getInitializers();
        if (choices == null) return;
        var index = indices.get(depth);
        if (index instanceof LiteralTree && ((LiteralTree)index).getValue() instanceof Integer) {
            int i = (int)((LiteralTree)index).getValue();
            if (i >= 0 && i < choices.size()) inspectArray(choices.get(i), indices, depth + 1, site, kind, path);
        } else {
            for (var choice : choices) inspectArray(choice, indices, depth + 1, site, kind, path);
        }
    }

    @Override public Void visitAssignment(AssignmentTree t, Void v) {
        String target = t.getVariable().toString();
        if (target.equals("specificName") || target.endsWith(".specificName"))
            inspect(t.getExpression(), t, "display", new HashSet<>());
        return super.visitAssignment(t, v);
    }

    @Override public Void visitMethodInvocation(MethodInvocationTree t, Void v) {
        String select = t.getMethodSelect().toString();
        int dot = select.lastIndexOf('.');
        String name = select.substring(dot + 1);
        String cls = dot < 0 ? owner : select.substring(0, dot);
        int args = t.getArguments().size();
        for (int i = 0; i < args; i++) {
            String call = cls + "." + name + "/" + args + "#" + i;
            String kind = routes.get(call);
            if (LOOKUPS.contains(name) && (cls.equals("ModLang") || dot < 0 && unit.getImports().toString().contains("static fr.testudo.spacecorsair.mod.ModLang.")) && i == 0) kind = "key";
            int labelArg = name.equals("makeText") || name.equals("setText") && cls.equals("ModUi") && args == 2 ? 1 : name.equals("addTextToTextWaitingQueue") ? args - 6 : 0;
            if (LABELS.contains(name) && i == labelArg && kind == null) kind = name.equals("setText") ? "layout" : "display";
            String saved = widget;
            if (LABELS.contains(name) && i == labelArg) widget = method + ":" + select.replaceAll("[^A-Za-z0-9_.]", "_");
            if (owner.equals("ModLang") && method.contains(".selector/") && !"key".equals(kind)) kind = null;
            if (kind != null) inspect(t.getArguments().get(i), t.getArguments().get(i), kind, new HashSet<>());
            scan(t.getArguments().get(i), v);
            widget = saved;
        }
        scan(t.getMethodSelect(), v);
        return null;
    }

    public static void main(String[] args) throws Exception {
        Path root = Paths.get(args[0]).toAbsolutePath().normalize();
        JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();
        DiagnosticCollector<JavaFileObject> diagnostics = new DiagnosticCollector<>();
        try (StandardJavaFileManager fm = compiler.getStandardFileManager(diagnostics, Locale.ROOT, StandardCharsets.UTF_8)) {
            List<Path> files = new ArrayList<>();
            try (var paths = Files.list(root.resolve("src/java/fr/testudo/spacecorsair/mod"))) {
                paths.filter(p -> p.toString().endsWith(".java")).sorted().forEach(files::add);
            }
            JavacTask task = (JavacTask)compiler.getTask(null, fm, diagnostics, List.of("-proc:none"), null,
                fm.getJavaFileObjectsFromPaths(files));
            Map<String, ExpressionTree> fields = new HashMap<>();
            Map<String, String> routes = new HashMap<>();
            List<TextSites> readers = new ArrayList<>();
            for (CompilationUnitTree u : task.parse()) {
                TextSites reader = new TextSites(u, Trees.instance(task).getSourcePositions(), root, fields, routes);
                readers.add(reader);
                for (Tree decl : u.getTypeDecls()) if (decl instanceof ClassTree)
                    for (Tree member : ((ClassTree)decl).getMembers()) if (member instanceof VariableTree) {
                        VariableTree f = (VariableTree)member;
                        if (f.getModifiers().getFlags().contains(javax.lang.model.element.Modifier.FINAL))
                            fields.put(reader.owner + "." + f.getName(), f.getInitializer());
                    }
            }
            for (var d : diagnostics.getDiagnostics()) if (d.getKind() == Diagnostic.Kind.ERROR)
                throw new IllegalArgumentException(d.toString());
            Map<String,String> before;
            do {
                before = new HashMap<>(routes);
                for (TextSites r : readers) { r.discover = true; r.scan(r.unit, null); }
            } while (!routes.equals(before));
            for (TextSites r : readers) { r.discover = false; r.scan(r.unit, null); }
        }
    }
}
