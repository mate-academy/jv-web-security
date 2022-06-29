package taxi.controller.exception;

public class AuthenticationException extends Exception {
    public AuthenticationException(String message, Throwable e) {
        super(message, e);
    }

    public AuthenticationException(String message) {
        super(message);
    }
}
