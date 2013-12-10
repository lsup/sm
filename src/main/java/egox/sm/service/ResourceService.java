package egox.sm.service;

import egox.sm.bean.Resource;
import java.util.List;

/**
 *
 * @author Gavin
 */
public interface ResourceService {
    List<Resource> getResourcesByUserId(Long id);
    
    Resource getResourceById(Long id);
    
    List<Resource> getAllResources();
}
