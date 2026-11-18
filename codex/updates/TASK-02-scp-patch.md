# UPD-02: delta APK patch tools (.scp)
Implement plan section 5.1.
1. `codex/tools/upd-02/scp_make.py OLD.apk NEW.apk OUT.scp`: header (magic `SCP1`, fromSha256, toSha256, toSize), then deflated ops COPY(offset,len of OLD) / DATA(bytes) in output order. Match local entries by name+CRC+compressed size+compressed bytes; signing block, central directory and EOCD as DATA. Merge adjacent COPY ranges.
2. `src/java/.../mod/` is OFF LIMITS. Put the applier as a standalone class `work/dtest/ScpApply.java` (package-less, Java 8, streaming, SHA-256 while writing, refuses on fromSha mismatch, refuses on toSha mismatch and deletes output, caps output at toSize).
3. Test `work/dtest/V60P.java`: builds two small APKs-like zips in temp (one changed entry, one added, one removed, one renamed), makes a patch with the Python tool, applies it in Java, asserts byte equality; plus corrupted-patch, wrong-base and truncated cases.
4. Real-size check: download the v44 release APK (releases/download/v44/space-corsair-mod.apk) and the v45-test2 pre-release APK from JosePriet/docker-android releases, build the patch, apply it, assert sha equality. Report patch size and timing. Do not commit APKs or patches.
