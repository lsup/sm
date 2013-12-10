package egox.sm.ui;

import com.google.common.collect.Lists;
import java.io.Serializable;
import java.util.List;

/**
 * 左边菜单列表
 *
 * @author Gavin
 */
public class Menu implements Serializable {

    private Long id;
    private String name;
    private String url;
    private String icon;

    private List<Menu> children;

    public Menu() {
    }

    public Menu(Long id, String name, String url, String icon) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.icon = icon;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public List<Menu> getChildren() {
        if (this.children == null) {
            this.children = Lists.newArrayList();
        }
        return this.children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 61 * hash + (this.id != null ? this.id.hashCode() : 0);
        hash = 61 * hash + (this.name != null ? this.name.hashCode() : 0);
        hash = 61 * hash + (this.url != null ? this.url.hashCode() : 0);
        hash = 61 * hash + (this.icon != null ? this.icon.hashCode() : 0);
        hash = 61 * hash + (this.children != null ? this.children.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Menu other = (Menu) obj;
        if (this.id != other.id && (this.id == null || !this.id.equals(other.id))) {
            return false;
        }
        if ((this.name == null) ? (other.name != null) : !this.name.equals(other.name)) {
            return false;
        }
        if ((this.url == null) ? (other.url != null) : !this.url.equals(other.url)) {
            return false;
        }
        if ((this.icon == null) ? (other.icon != null) : !this.icon.equals(other.icon)) {
            return false;
        }
        if (this.children != other.children && (this.children == null || !this.children.equals(other.children))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Menu{" + "id=" + id + ", name=" + name + ", url=" + url + ", icon=" + icon + ", children=" + children + '}';
    }

}
