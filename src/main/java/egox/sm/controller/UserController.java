package egox.sm.controller;

import egox.sm.bean.User;
import egox.sm.service.UserService;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Gavin <egox.vip@gmail.com>
 */
@Controller
public class UserController extends AbstractController {

    /**
     * logger
     */
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;
    @Autowired
    private HttpServletRequest request;

//    @RequestMapping(value = "users", method = RequestMethod.GET)
//    public List<User> getAllUsers() {
//        logger.debug("getAllUsers method run! ");
//        return userService.getAllUsers();
//    }
    @RequestMapping(value = "user/{userId}", method = RequestMethod.GET)
    public User getUserById(@PathVariable("userId") Long userId) {
        logger.error("getUserById method run! ");
        return userService.getUserById(userId);
    }

}
