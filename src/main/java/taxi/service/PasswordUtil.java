package taxi.service;

public interface PasswordUtil {
    String hashPassword(String password);

    boolean checkPassword(String dbPassword, String loginPassword);
}
