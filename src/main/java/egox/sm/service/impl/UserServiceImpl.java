package egox.sm.service.impl;

import egox.sm.bean.User;
import egox.sm.dao.UserMapper;
import egox.sm.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Gavin
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> getAllUsers() {
        return userMapper.selectByExample(null);
    }

    @Override
    public User getUserById(long id) {
        return userMapper.selectByPrimaryKey(id);
    }

}
