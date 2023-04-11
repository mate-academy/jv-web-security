package taxi.model;

import java.util.Objects;

public class Driver {
    private Long id;
    private String userName;
    private String password;
    private String permission;
    private String name;
    private String licenseNumber;

    public Driver() {
    }

    public Driver(String name, String licenseNumber) {
        this.name = name;
        this.licenseNumber = licenseNumber;
    }

    public Driver(String userName, String permission, String name, String licenseNumber) {
        this(name, licenseNumber);
        this.permission = permission;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
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
                && Objects.equals(userName, driver.userName)
                && Objects.equals(password, driver.password)
                && Objects.equals(permission, driver.permission)
                && Objects.equals(name, driver.name)
                && Objects.equals(licenseNumber, driver.licenseNumber);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userName, password, permission, name, licenseNumber);
    }

    @Override
    public String toString() {
        return "Driver{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", permission='" + permission + '\'' +
                ", name='" + name + '\'' +
                ", licenseNumber='" + licenseNumber + '\'' +
                '}';
        //return "Driver(" + userName + ' ' + name + ':' + licenseNumber + ')';
    }
}
