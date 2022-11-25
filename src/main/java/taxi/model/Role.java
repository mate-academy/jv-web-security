package taxi.model;

public enum Role {
    DRIVER("driver"),
    ADMIN("admin");
    private final String roleOnSIte;

    Role(String roleOnSIte) {
        this.roleOnSIte = roleOnSIte;
    }

    public String getRoleOnSIte() {
        return roleOnSIte;
    }
}
