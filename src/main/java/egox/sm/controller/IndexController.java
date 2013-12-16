package egox.sm.controller;

import egox.sm.bean.Resource;
import egox.sm.service.ResourceService;
import egox.sm.ui.Menu;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Gavin <egox.vip@gmail.com>
 */
@Controller
public class IndexController extends AbstractController {

    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    private ResourceService resourceService;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping(value = "welcome", method = RequestMethod.GET)
    public ModelAndView getAllUsers() {
        List<Resource> resources = resourceService.getResourcesByUserId(1L);
        List<Menu> menus = resourceService.convetToMenus(resources);
        Map<String, List<Menu>> map = new HashMap<String, List<Menu>>();
        map.put("sidenav", menus);
        return new ModelAndView("index/welcome", map);
    }

}
