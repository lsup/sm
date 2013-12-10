package egox.sm.service;

import egox.sm.bean.Resource;
import egox.sm.bean.User;
import java.util.List;

/**
 *
 * @author Gavin
 */
public interface UserService {

    User login(String username, String password);
    
    User getUserById(Long id);

    User getUserByUsername(String username);

    List<User> getAllUsers();
}
