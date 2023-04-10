package taxi.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;

public class PasswordHashing {
    public static byte[] generateSalt() {
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        random.nextBytes(salt);
        return salt;
    }

    public static byte[] hashPassword(String password, byte[] salt)
            throws NoSuchAlgorithmException {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        digest.reset();
        digest.update(salt);
        byte[] hash = digest.digest(password.getBytes());
        return hash;
    }

    public static boolean checkPassword(String password, byte[] storedHash, byte[] storedSalt)
            throws NoSuchAlgorithmException {
        byte[] hash = hashPassword(password, storedSalt);
        return Arrays.equals(hash, storedHash);
    }
}
