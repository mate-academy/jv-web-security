package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String SALT = "salt";
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(username);
        String hashPassword = "" + (SALT + password).hashCode();
        if (driver.isPresent() && driver.get().getPassword().equals(hashPassword)) {
            return driver.get();
        }
        throw new AuthenticationException("Password or username was incorrect!");
    }

    @Override
    public boolean isValidLogin(String username) {
        if (username == null || username.length() < 4 || username.length() > 12) {
            return false;
        }
        return driverService.findByLogin(username).isEmpty();
    }

    @Override
    public boolean isValidPassword(String password, String repeatPassword)
            throws AuthenticationException {
        if (password == null || password.length() < 6 || password.length() > 20) {
            throw new AuthenticationException("Password must contain 6-20 characters!");
        }
        if (!password.equals(repeatPassword)) {
            throw new AuthenticationException("Passwords do not match!");
        }
        return password.matches(".*[0-9].*") || password.matches(".*[a-zA-Z].*");
    }

    @Override
    public void saveNewDriverToDb(String username, String password, String repeatPassword,
                                  String name, String licenseNumber)
            throws AuthenticationException {
        if (isValidData(username, password, repeatPassword, name, licenseNumber)) {
            Driver driver = new Driver();
            driver.setName(name);
            driver.setLicenseNumber(licenseNumber);
            driver.setLogin(username);
            driver.setPassword("" + (SALT + password).hashCode());
            driverService.create(driver);
        }
    }

    private boolean isValidData(String username, String password, String repeatPassword,
                                String name, String licenseNumber) throws AuthenticationException {
        if (isValidLogin(username) && isValidPassword(password, repeatPassword)) {
            return name.length() > 0 && !name.matches("[0-9]") && licenseNumber.length() == 6;
        }
        return false;
    }
}
