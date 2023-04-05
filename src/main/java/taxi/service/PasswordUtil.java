package taxi.service;

public interface PasswordUtil {
    String generateHash(String password);

    boolean checkPassword(String password, String password1);
}
