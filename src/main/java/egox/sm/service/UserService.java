package egox.sm.service;

import egox.sm.bean.Resource;
import egox.sm.bean.User;
import java.util.List;

/**
 *
 * @author Gavin
 */
public interface UserService {

    User getUserById(Long id);

    User getUserByUsername(String username);

    List<User> getAllUsers();
    
    List<Resource> getResourcesByUserId(Long id);
}
