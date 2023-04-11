package taxi.util;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Base64;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

public class Encrypt {
    private static final String SALT = "ENyeheAGgPK+Ifj95S7dNQ==";

    public static String getEncryptedString(String pass) {
        byte[] saltBytes = SALT.getBytes();
        KeySpec spec = new PBEKeySpec(pass.toCharArray(), saltBytes, 65536, 128);
        SecretKeyFactory f = null;
        byte[] hash = null;
        try {
            f = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
            hash = f.generateSecret(spec).getEncoded();
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new RuntimeException("Can't encrypt password", e);
        }
        return Base64.getEncoder().encodeToString(hash);
    }
}
