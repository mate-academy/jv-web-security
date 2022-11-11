package taxi.model;

import java.util.Objects;

public class Driver {
    private Long id;
    private String name;
    private String licenseNumber;
    private String login;
    private String password;

    public Driver() {
    }

    public Driver(String name, String licenseNumber) {
        this.name = name;
        this.licenseNumber = licenseNumber;
    }

    public Driver(String name, String licenseNumber, String login, String password) {
        this(name, licenseNumber);
        this.login = login;
        this.password = password;
    }

    public Driver(Long id, String name, String licenseNumber, String login, String password) {
        this(name, licenseNumber, login, password);
        this.id = id;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Driver driver = (Driver) o;
        return id.equals(driver.id) && name.equals(driver.name)
                && licenseNumber.equals(driver.licenseNumber)
                && login.equals(driver.login)
                && password.equals(driver.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, licenseNumber, login, password);
    }
}
