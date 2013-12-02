package egox.sm.service.impl;

import egox.sm.bean.Resource;
import egox.sm.bean.User;
import egox.sm.bean.UserExample;
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
    public User getUserById(Long id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public User getUserByUsername(String username) {
        User user = null;
        UserExample userExample = new UserExample();
        userExample.createCriteria().andUsernameEqualTo(username);
        List<User> users = userMapper.selectByExample(userExample);
        if (users != null && users.size() == 1) {
            user = users.get(0);
        }
        return user;
    }

    @Override
    public List<User> getAllUsers() {
        return userMapper.selectByExample(null);
    }

    @Override
    public List<Resource> getResourcesByUserId(Long id) {
        
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
