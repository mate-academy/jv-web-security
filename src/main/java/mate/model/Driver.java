package mate.model;

public class Driver {
    private Long id;
    private String name;
    private String licenseNumber;
    private String username;
    private String password;

    public Driver(String name, String licenseNumber, String username, String password) {
        this.name = name;
        this.licenseNumber = licenseNumber;
        this.username = username;
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

    public String getLicenseNumber() {
        return licenseNumber;
    }

    public void setLicenseNumber(String licenseNumber) {
        this.licenseNumber = licenseNumber;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Driver{"
                + " name='" + name + '\''
                + ", licenseNumber='" + licenseNumber + '\''
                + ", username='" + username + '\''
                + '}';
    }
}
