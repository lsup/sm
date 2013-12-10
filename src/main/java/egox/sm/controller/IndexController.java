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

    /**
     * logger
     */
    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    private ResourceService resourceService;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView getAllUsers() {
        List<Resource> resources = resourceService.getResourcesByUserId(1L);
        List<Menu> menus = convetToMenus(resources);
        Map<String, List<Menu>> map = new HashMap<String, List<Menu>>();
        map.put("menu", menus);
        return new ModelAndView("index", map);
    }

    public List<Menu> getMenuFromResources(List<Resource> resources) {
        Menu root = convertToMenu(resourceService.getResourceById(1L));
        for (Resource resource : resources) {
            Resource father = resourceService.getResourceById(resource.getParentId());
        }
        return null;
    }

    public Menu convertToMenu(Resource resource) {
        return new Menu(resource.getId(), resource.getName(), resource.getUrl(), resource.getIcon());
    }

    public List<Menu> convetToMenus(List<Resource> resources) {
        Map<Long, Menu> menuMap = new HashMap<Long, Menu>();
        if (resources.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        for (Resource resource : resources) {
            test(resource, menuMap);
        }
        return menuMap.get(1L).getChildren();
    }

    public void test(Resource resource, Map<Long, Menu> menuMap) {
        if (resource == null) {
            // 最顶层 跳出
            return;
        }
        Long parentId = resource.getParentId();
        Long id = resource.getId();
        Menu menu = menuMap.get(id);
        if (menu == null) {
            menu = convertToMenu(resource);
//            menuMap.put(id, menu);
        }

        Menu fatherMenu = menuMap.get(parentId);
        Resource fatherResource = null;
        if (fatherMenu == null) {
            fatherResource = resourceService.getResourceById(parentId);
            if (fatherResource == null) {
                return;
            }
            fatherMenu = convertToMenu(fatherResource);
        }
        List<Menu> children = fatherMenu.getChildren();
        children.add(menu);
        fatherMenu.setChildren(children);
        menuMap.put(parentId, fatherMenu);
        test(fatherResource, menuMap);
    }
}
