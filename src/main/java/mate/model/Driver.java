package mate.model;

import java.util.Objects;

public class Driver {
    private String login;
    private String password;
    private Long id;
    private String name;
    private String licenseNumber;

    public Driver(String name, String licenseNumber) {
        this.name = name;
        this.licenseNumber = licenseNumber;
    }

    public Driver(String login, String password, String name, String licenseNumber) {
        this(name, licenseNumber);
        this.login = login;
        this.password = password;
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

    public String getLicenseNumber() {
        return licenseNumber;
    }

    public void setLicenseNumber(String licenseNumber) {
        this.licenseNumber = licenseNumber;
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
                && Objects.equals(licenseNumber, driver.licenseNumber);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, licenseNumber);
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Driver{");
        sb.append("login='").append(login).append('\'');
        sb.append(", password='").append(password).append('\'');
        sb.append(", id=").append(id);
        sb.append(", name='").append(name).append('\'');
        sb.append(", licenseNumber='").append(licenseNumber).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
