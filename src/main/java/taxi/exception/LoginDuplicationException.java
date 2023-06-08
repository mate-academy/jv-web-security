package taxi.exception;

public class LoginDuplicationException extends RuntimeException {
    public LoginDuplicationException(String message) {
        super(message);
    }
}
