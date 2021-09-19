package mate.service;

import mate.exception.AuthentificationException;
import mate.model.Driver;

public interface AuthentificationService {
    Driver login(String login, String password) throws AuthentificationException;
}
