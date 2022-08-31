package taxi.model;

import java.util.Objects;

public class User {
    private Long id;
    private String login;
    private String password;
    private Driver driver;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Driver getDriver() {
        return driver;
    }

    public void setDriver(Driver driver) {
        this.driver = driver;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        User user = (User) o;
        return Objects.equals(id, user.id)
                && Objects.equals(login, user.login)
                && Objects.equals(password, user.password)
                && Objects.equals(driver, user.driver);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, login, password, driver);
    }

    @Override
    public String toString() {
        return "User{"
                + "login = '" + login + '\''
                + ", driver = " + driver
                + '}';
    }
}
