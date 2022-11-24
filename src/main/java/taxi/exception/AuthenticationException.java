package taxi.exception;

public abstract class AuthenticationException extends Exception {

    public AuthenticationException(String massage) {
        super(massage);
    }
}
