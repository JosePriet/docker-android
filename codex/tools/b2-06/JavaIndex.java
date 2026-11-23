import com.sun.source.tree.*;
import com.sun.source.util.*;
import java.nio.file.*;
import java.util.*;
import javax.lang.model.element.*;
import javax.lang.model.type.*;
import javax.lang.model.util.*;
import javax.tools.*;

/** Resolve mod symbols with javac (no Android class loading). Output is tab-separated. */
public class JavaIndex extends TreePathScanner<Void,String> {
    final Trees trees;
    final Elements elements;
    final Types types;
    CompilationUnitTree unit;
    String file;
    static final String PKG = "fr.testudo.spacecorsair.mod.";

    JavaIndex(JavacTask task) {
        trees = Trees.instance(task);
        elements = task.getElements();
        types = task.getTypes();
    }

    String descriptor(TypeMirror t) {
        switch (t.getKind()) {
            case VOID: return "V";
            case BOOLEAN: return "Z";
            case BYTE: return "B";
            case SHORT: return "S";
            case CHAR: return "C";
            case INT: return "I";
            case LONG: return "J";
            case FLOAT: return "F";
            case DOUBLE: return "D";
            case ARRAY: return "[" + descriptor(((ArrayType)t).getComponentType());
            case DECLARED: return "L" + elements.getBinaryName((TypeElement)types.asElement(t)).toString().replace('.','/') + ";";
            default: return descriptor(types.erasure(t));
        }
    }

    String symbol(Element e) {
        if (e == null) return null;
        TypeElement owner = e instanceof TypeElement ? (TypeElement)e :
            e.getEnclosingElement() instanceof TypeElement ? (TypeElement)e.getEnclosingElement() : null;
        if (owner == null) return null;
        String name = elements.getBinaryName(owner).toString();
        if (!name.startsWith(PKG)) return null;
        name = name.substring(PKG.length());
        if (e instanceof TypeElement) return name;
        if (e instanceof ExecutableElement) {
            ExecutableElement m = (ExecutableElement)e;
            StringBuilder b = new StringBuilder(name).append("->").append(m.getSimpleName()).append('(');
            for (VariableElement p : m.getParameters()) b.append(descriptor(p.asType()));
            return b.append(')').append(descriptor(m.getReturnType())).toString();
        }
        if (e.getKind().isField()) return name + "->" + e.getSimpleName() + ":" + descriptor(e.asType());
        return null;
    }

    long line(Tree t) {
        return unit.getLineMap().getLineNumber(trees.getSourcePositions().getStartPosition(unit,t));
    }

    String declare(Tree t, String kind) {
        Element e = trees.getElement(getCurrentPath());
        String id = symbol(e);
        if (id != null) System.out.println(String.join("\t","D",kind,id,file,Long.toString(line(t)),
                e.getModifiers().toString(), dispatch(e)));
        return id;
    }

    String dispatch(Element e) {
        if (e.getKind() != ElementKind.METHOD) return "";
        TypeElement owner = (TypeElement)e.getEnclosingElement();
        for (TypeMirror base : types.directSupertypes(owner.asType())) {
            TypeElement type = (TypeElement)types.asElement(base);
            for (Element member : elements.getAllMembers(type)) {
                if (member.getKind() == ElementKind.METHOD &&
                    elements.overrides((ExecutableElement)e,(ExecutableElement)member,owner)) return "override";
            }
        }
        return "";
    }

    @Override public Void visitNewArray(NewArrayTree t, String parent) {
        if (parent != null && parent.contains(":") && t.getInitializers() != null) {
            int index = 0;
            for (ExpressionTree item : t.getInitializers()) {
                System.out.println(String.join("\t","A",parent,Integer.toString(index),file,Long.toString(line(item))));
                index++;
            }
        }
        return super.visitNewArray(t,parent);
    }

    @Override public Void visitClass(ClassTree t, String parent) {
        return super.visitClass(t, declare(t,"class"));
    }

    @Override public Void visitMethod(MethodTree t, String parent) {
        return super.visitMethod(t, declare(t,"method"));
    }

    @Override public Void visitVariable(VariableTree t, String parent) {
        Element e = trees.getElement(getCurrentPath());
        if (e != null && e.getKind().isField()) return super.visitVariable(t, declare(t,"field"));
        return super.visitVariable(t,parent);
    }

    void reference(Tree t, String caller) {
        String to = symbol(trees.getElement(getCurrentPath()));
        if (caller != null && to != null) System.out.println(String.join("\t","R",caller,to,file,Long.toString(line(t))));
    }

    @Override public Void visitIdentifier(IdentifierTree t, String caller) {
        reference(t,caller); return super.visitIdentifier(t,caller);
    }
    @Override public Void visitMemberSelect(MemberSelectTree t, String caller) {
        reference(t,caller); return super.visitMemberSelect(t,caller);
    }
    @Override public Void visitNewClass(NewClassTree t, String caller) {
        reference(t,caller); return super.visitNewClass(t,caller);
    }
    @Override public Void visitMemberReference(MemberReferenceTree t, String caller) {
        reference(t,caller); return super.visitMemberReference(t,caller);
    }

    public static void main(String[] paths) throws Exception {
        JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();
        DiagnosticCollector<JavaFileObject> diagnostics = new DiagnosticCollector<>();
        try (StandardJavaFileManager fm = compiler.getStandardFileManager(diagnostics,null,null)) {
            JavacTask task = (JavacTask)compiler.getTask(null,fm,diagnostics,
                List.of("--release","8","-proc:none","-cp","work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls"),
                null,fm.getJavaFileObjectsFromStrings(Arrays.asList(paths)));
            Iterable<? extends CompilationUnitTree> units = task.parse();
            task.analyze();
            for (Diagnostic<?> d : diagnostics.getDiagnostics()) {
                if (d.getKind() == Diagnostic.Kind.ERROR) throw new IllegalArgumentException(d.toString());
            }
            JavaIndex index = new JavaIndex(task);
            for (CompilationUnitTree u : units) {
                index.unit = u;
                index.file = Paths.get("").toAbsolutePath().relativize(Paths.get(u.getSourceFile().toUri())).toString();
                index.scan(u,null);
            }
        }
    }
}
