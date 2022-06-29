package taxi.service;

public interface RegistrationService {
    boolean register(String login, String password, String repeatedPassword);
}
