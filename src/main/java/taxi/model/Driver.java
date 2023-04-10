package taxi.model;

import java.util.Arrays;
import java.util.Objects;

public class Driver {
    private Long id;
    private String name;
    private String licenseNumber;
    private String login;
    private String password;
    private byte[] hashPassword;
    private byte[] saltPassword;

    public Driver() {
    }

    public Driver(String name, String licenseNumber) {
        this.name = name;
        this.licenseNumber = licenseNumber;
    }

    public Driver(String name, String licenseNumber, String login) {
        this(name, licenseNumber);
        this.login = login;
    }

    public Driver(String name, String licenseNumber, String login, String password) {
        this(name, licenseNumber, login);
        this.password = password;
    }

    public Driver(Long id, String name, String licenseNumber, String login, String password) {
        this(name, licenseNumber, login, password);
        this.id = id;
    }

    public Driver(Long id, String name, String licenseNumber, String login, byte[] hashPassword,
                  byte[] saltPassword) {
        this(name, licenseNumber, login);
        this.id = id;
        this.hashPassword = hashPassword;
        this.saltPassword = saltPassword;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLicenseNumber() {
        return licenseNumber;
    }

    public void setLicenseNumber(String licenseNumber) {
        this.licenseNumber = licenseNumber;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public byte[] getHashPassword() {
        return hashPassword;
    }

    public void setHashPassword(byte[] hashPassword) {
        this.hashPassword = hashPassword;
    }

    public byte[] getSaltPassword() {
        return saltPassword;
    }

    public void setSaltPassword(byte[] saltPassword) {
        this.saltPassword = saltPassword;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Driver driver = (Driver) o;
        return Objects.equals(id, driver.id)
                && Objects.equals(name, driver.name)
                && Objects.equals(licenseNumber, driver.licenseNumber)
                && Objects.equals(login, driver.login)
                && Arrays.equals(hashPassword, driver.hashPassword)
                && Arrays.equals(saltPassword, driver.saltPassword);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, licenseNumber, login, hashPassword, saltPassword);
    }
}
