package taxi.service;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import taxi.lib.Service;

@Service
public class PasswordUtilImpl implements PasswordUtil {
    private static final int ITERATIONS = 65536;
    private static final int KEY_LENGTH = 128;
    private static final String ALGORITHM = "PBKDF2WithHmacSHA1";

    @Override
    public String hashPassword(String password) {
        try {
            byte[] salt = generateSalt();
            byte[] hash = getHash(password, salt);
            return toHex(salt) + ":" + toHex(hash);
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean checkPassword(String dbPassword, String loginPassword) {
        try {
            String loginHash = hashLoginPassword(dbPassword, loginPassword);
            return loginHash.equals(dbPassword);
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new RuntimeException("Can't check passwords, ", e);
        }
    }

    private byte[] generateSalt() throws NoSuchAlgorithmException {
        SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        random.nextBytes(salt);
        return salt;
    }

    private byte[] getHash(String password, byte[] salt)
            throws NoSuchAlgorithmException, InvalidKeySpecException {
        KeySpec spec = new PBEKeySpec(password.toCharArray(), salt, ITERATIONS, KEY_LENGTH);
        SecretKeyFactory factory = SecretKeyFactory.getInstance(ALGORITHM);
        return factory.generateSecret(spec).getEncoded();
    }

    private String toHex(byte[] array) {
        StringBuilder sb = new StringBuilder();
        for (byte b : array) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }

    private String hashLoginPassword(String dbPassword, String loginPassword)
            throws NoSuchAlgorithmException, InvalidKeySpecException {
        byte[] salt = extractSalt(dbPassword);
        byte[] hash = getHash(loginPassword, salt);
        return toHex(salt) + ":" + toHex(hash);
    }

    private byte[] extractSalt(String hash) {
        String[] parts = hash.split(":");
        return fromHex(parts[0]);
    }

    private byte[] fromHex(String hex) {
        int len = hex.length();
        byte[] buf = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            buf[i / 2] = (byte) ((Character.digit(hex.charAt(i), 16) << 4)
                    + Character.digit(hex.charAt(i + 1), 16));
        }
        return buf;
    }
}
