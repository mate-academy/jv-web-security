package taxi.exception;

public class AuthenticationException extends Exception {
    public AuthenticationException(String message) {
        super(message);
    }
    public AuthenticationException() {
        super("There was an error processing authentication logic");
    }
}
