package netsim;

import java.io.*;
import java.net.*;
import java.util.*;
import org.objectweb.asm.*;

// Each handset gets its own game, mod singletons and clock. Instrument the loaded
// copies, including transitive mod calls made by the network reader.
final class PhoneLoader extends URLClassLoader {
    static final String MOD = "fr/testudo/spacecorsair/mod/";
    PhoneLoader() { super(paths(), Phone.class.getClassLoader()); }
    private static URL[] paths() {
        List<URL> urls = new ArrayList<>();
        for (String path : System.getProperty("java.class.path").split(File.pathSeparator)) {
            try { urls.add(new File(path).toURI().toURL()); }
            catch (MalformedURLException e) { throw new IllegalArgumentException(e); }
        }
        return urls.toArray(new URL[0]);
    }
    @Override protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        if (!name.startsWith("fr.testudo.")) return super.loadClass(name, resolve);
        Class<?> found = findLoadedClass(name);
        if (found == null) found = findClass(name);
        if (resolve) resolveClass(found);
        return found;
    }
    @Override protected Class<?> findClass(String name) throws ClassNotFoundException {
        String internal = name.replace('.', '/');
        if (!internal.startsWith(MOD) || internal.startsWith(MOD + "SimPhone")) return super.findClass(name);
        URL resource = findResource(internal + ".class");
        if (resource == null) throw new ClassNotFoundException(name);
        try (InputStream in = resource.openStream()) {
            ClassReader r = new ClassReader(in);
            ClassWriter w = new ClassWriter(r, ClassWriter.COMPUTE_MAXS);
            r.accept(new ClassVisitor(Opcodes.ASM9, w) {
                @Override public MethodVisitor visitMethod(int access, String method, String desc, String sig, String[] ex) {
                    return new MethodVisitor(Opcodes.ASM9, super.visitMethod(access, method, desc, sig, ex)) {
                        int line;
                        @Override public void visitLineNumber(int value, Label label) { line = value; super.visitLineNumber(value, label); }
                        @Override public void visitFieldInsn(int op, String owner, String field, String type) {
                            if (owner.startsWith("fr/testudo/spacecorsair/") && !owner.startsWith(MOD)
                                && (op == Opcodes.GETFIELD || op == Opcodes.PUTFIELD || field.equals("INSTANCE"))) {
                                super.visitLdcInsn(internal.substring(MOD.length()) + "." + method + ":" + line);
                                super.visitMethodInsn(Opcodes.INVOKESTATIC, "netsim/NetSim", "touch", "(Ljava/lang/String;)V", false);
                            }
                            super.visitFieldInsn(op, owner, field, type);
                        }
                        @Override public void visitMethodInsn(int op, String owner, String callee, String type, boolean itf) {
                            if (owner.equals("java/lang/System") && callee.equals("currentTimeMillis")) {
                                super.visitFieldInsn(Opcodes.GETSTATIC, MOD + "SimPhone", "time", "J");
                            } else if (owner.endsWith("/LevelBuilder") && callee.equals("jumpToLevel")) {
                                // Closed level generation needs the Android renderer and storage.
                                super.visitMethodInsn(op, MOD + "SimPhone", "jump", type, false);
                            } else {
                                if (owner.equals(MOD + "ModLan") && callee.equals("rollLoot")) {
                                    super.visitMethodInsn(Opcodes.INVOKESTATIC, MOD + "SimPhone", "roll", "()V", false);
                                }
                                super.visitMethodInsn(op, owner, callee, type, itf);
                            }
                        }
                    };
                }
            }, 0);
            byte[] bytes = w.toByteArray();
            return defineClass(name, bytes, 0, bytes.length);
        } catch (IOException e) { throw new ClassNotFoundException(name, e); }
    }
}
