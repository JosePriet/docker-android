import com.android.apksig.*;
import java.io.*; import java.security.*; import java.security.cert.*; import java.util.*;
public class Sign {
  public static void main(String[] a) throws Exception {
    KeyStore ks = KeyStore.getInstance("PKCS12");
    try (InputStream in = new FileInputStream(a[2])) { ks.load(in, a[3].toCharArray()); }
    String alias = ks.aliases().nextElement();
    PrivateKey k = (PrivateKey) ks.getKey(alias, a[3].toCharArray());
    X509Certificate c = (X509Certificate) ks.getCertificate(alias);
    ApkSigner.SignerConfig sc = new ApkSigner.SignerConfig.Builder("CERT", k, Collections.singletonList(c)).build();
    new ApkSigner.Builder(Collections.singletonList(sc))
      .setInputApk(new File(a[0])).setOutputApk(new File(a[1]))
      .setV1SigningEnabled(true).setV2SigningEnabled(true).build().sign();
    ApkVerifier.Result r = new ApkVerifier.Builder(new File(a[1])).build().verify();
    System.out.println("verified=" + r.isVerified() + " v1=" + r.isVerifiedUsingV1Scheme() + " v2=" + r.isVerifiedUsingV2Scheme());
    for (Object e : r.getErrors()) System.out.println("ERR " + e);
    for (Object e : r.getWarnings()) System.out.println("WARN " + e);
  }
}
