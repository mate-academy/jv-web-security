package taxi.service;

import taxi.model.User;

public interface UserService extends GenericService<User> {
    User getByLogin(String login);
}
