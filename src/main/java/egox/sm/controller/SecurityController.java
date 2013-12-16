package egox.sm.controller;

import egox.sm.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Gavin <egox.vip@gmail.com>
 */
@Controller
public class SecurityController extends AbstractController {

    private static final Logger logger = LoggerFactory.getLogger(SecurityController.class);

    @Autowired
    private UserService userService;
    @Autowired
    private HttpServletRequest request;

    /**
     * 若通过地址栏主动进入login页面，则可发生死循环（一直登录不上），故退出。
     *
     * @return
     */
    @RequestMapping(method = RequestMethod.GET, value = "login")
    public ModelAndView login() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null && subject.isAuthenticated()) {
            subject.logout();
        }
        return new ModelAndView("login");
    }

    @RequestMapping(method = RequestMethod.POST, value = "login")
    public ModelAndView fail() {
        return new ModelAndView("login");
    }

    @RequestMapping("logout")
    public String logout() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null && subject.isAuthenticated()) {
            subject.logout();
        }
        return "redirect:/login";
    }

}
