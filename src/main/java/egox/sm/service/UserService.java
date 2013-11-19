package egox.sm.service;

import egox.sm.bean.User;

/**
 *
 * @author Gavin
 */
public interface UserService {

    User getUserById(Long id);

    User getUserByUsername(String username);
}
