package egox.sm.service.impl;

import egox.sm.bean.Resource;
import egox.sm.bean.ResourceExample;
import egox.sm.dao.ResourceMapper;
import egox.sm.service.ResourceService;
import java.util.List;
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

}
