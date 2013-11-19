package egox.sm.service.impl;

import egox.sm.bean.Role;
import egox.sm.dao.RoleMapper;
import egox.sm.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Gavin
 */
@Service("roleService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public Role getRoleById(Long id) {
        return roleMapper.selectByPrimaryKey(id);
    }

}
