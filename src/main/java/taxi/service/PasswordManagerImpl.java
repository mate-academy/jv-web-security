package taxi.service;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Random;
import taxi.lib.Service;

@Service
public class PasswordManagerImpl implements PasswordManager {
    private static final String HASH_ALGORITHM = "MD5";
    private static final Random RANDOM = new SecureRandom();
    private static final int SALT_LENGTH = 16;

    public String getSalt() {
        byte[] salt = new byte[SALT_LENGTH];
        RANDOM.nextBytes(salt);
        return new String(salt, StandardCharsets.UTF_8);
    }

    public String getPasswordHash(String password, String salt) {
        String passwordAndSalt = password + salt;
        try {
            MessageDigest md = MessageDigest.getInstance(HASH_ALGORITHM);
            byte[] array = md.digest(passwordAndSalt.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : array) {
                sb.append(Integer.toHexString((b & 0xFF) | 0x100), 1, 3);
            }
            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException e) {
            throw new RuntimeException("Something went wrong "
                    + "when computing password hash " + password, e);
        }
    }

    public boolean isPasswordCorrect(String expectedHash, String password, String salt) {
        return expectedHash.equals(getPasswordHash(password, salt));
    }
}
