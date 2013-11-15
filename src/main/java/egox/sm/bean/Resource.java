package egox.sm.bean;

public class Resource {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_resource.id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_resource.name
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_resource.description
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private String description;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_resource.url
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private String url;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_resource.order
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private Integer order;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_resource.parent_id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private Long parentId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_resource.parent_ids
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private String parentIds;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_resource.id
     *
     * @return the value of sys_resource.id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_resource.id
     *
     * @param id the value for sys_resource.id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_resource.name
     *
     * @return the value of sys_resource.name
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_resource.name
     *
     * @param name the value for sys_resource.name
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_resource.description
     *
     * @return the value of sys_resource.description
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_resource.description
     *
     * @param description the value for sys_resource.description
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_resource.url
     *
     * @return the value of sys_resource.url
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public String getUrl() {
        return url;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_resource.url
     *
     * @param url the value for sys_resource.url
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_resource.order
     *
     * @return the value of sys_resource.order
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public Integer getOrder() {
        return order;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_resource.order
     *
     * @param order the value for sys_resource.order
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setOrder(Integer order) {
        this.order = order;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_resource.parent_id
     *
     * @return the value of sys_resource.parent_id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public Long getParentId() {
        return parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_resource.parent_id
     *
     * @param parentId the value for sys_resource.parent_id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_resource.parent_ids
     *
     * @return the value of sys_resource.parent_ids
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public String getParentIds() {
        return parentIds;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_resource.parent_ids
     *
     * @param parentIds the value for sys_resource.parent_ids
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setParentIds(String parentIds) {
        this.parentIds = parentIds == null ? null : parentIds.trim();
    }
}