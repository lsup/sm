package egox.sm.service;

import egox.sm.bean.User;
import java.util.List;

/**
 *
 * @author Gavin
 */
public interface UserService {

    List<User> getAllUsers();

    User getUserById(long id);
}
