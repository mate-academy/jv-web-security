package taxi.service.impl;

import java.util.List;
import taxi.dao.UserDao;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.User;
import taxi.service.UserService;

@Service
public class UserServiceImpl implements UserService {
    @Inject
    private UserDao userDao;

    @Override
    public User create(User element) {
        return userDao.create(element);
    }

    @Override
    public User get(Long id) {
        return userDao.get(id).get();
    }

    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }

    @Override
    public User update(User element) {
        return userDao.update(element);
    }

    @Override
    public boolean delete(Long id) {
        return userDao.delete(id);
    }

    @Override
    public User getByLogin(String login) {
        return userDao.getByLogin(login).get();
    }
}
