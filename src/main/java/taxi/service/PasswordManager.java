package taxi.service;

public interface PasswordManager {
    String getSalt();

    String getPasswordHash(String password, String salt);

    boolean isPasswordCorrect(String expectedHash, String password, String salt);
}
