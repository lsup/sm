package egox.sm.service.impl;

import egox.sm.bean.Resource;
import egox.sm.bean.ResourceExample;
import egox.sm.dao.ResourceMapper;
import egox.sm.service.ResourceService;
import egox.sm.ui.Menu;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Gavin
 */
@Service("resourceService")
public class ResourceServiceImpl implements ResourceService {

    @Autowired
    private ResourceMapper resourceMapper;

    @Override
    public List<Resource> getResourcesByUserId(Long id) {
        return resourceMapper.selectByUserId(id);
    }

    @Override
    public Resource getResourceById(Long id) {
        return resourceMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Resource> getAllResources() {
        ResourceExample example = new ResourceExample();
        example.setOrderByClause("parent_id desc,weight desc");
        return resourceMapper.selectByExample(example);
    }

    private Menu convertToMenu(Resource resource) {
        return new Menu(resource.getId(), resource.getName(), resource.getUrl(), resource.getIcon());
    }

    @Override
    public List<Menu> convetToMenus(List<Resource> resources) {
        Map<Long, Menu> menuMap = new HashMap<Long, Menu>();
        if (resources.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        for (Resource resource : resources) {
            recurseMenu(resource, menuMap);
        }
        return menuMap.get(1L).getChildren();
    }

    private void recurseMenu(Resource resource, Map<Long, Menu> menuMap) {
        if (resource == null) {
            // 最顶层 跳出
            return;
        }
        Long parentId = resource.getParentId();
        Long id = resource.getId();
        Menu menu = menuMap.get(id);
        if (menu == null) {
            menu = convertToMenu(resource);
        }

        Menu fatherMenu = menuMap.get(parentId);
        Resource fatherResource = null;
        if (fatherMenu == null) {
            fatherResource = getResourceById(parentId);
            if (fatherResource == null) {
                return;
            }
            fatherMenu = convertToMenu(fatherResource);
        }
        List<Menu> children = fatherMenu.getChildren();
        children.add(menu);
        fatherMenu.setChildren(children);
        menuMap.put(parentId, fatherMenu);
        recurseMenu(fatherResource, menuMap);
    }

}
