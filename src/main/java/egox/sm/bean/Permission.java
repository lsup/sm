package egox.sm.bean;

public class Permission {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_permission.id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private Long id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_permission.name
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_permission.description
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    private String description;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_permission.id
     *
     * @return the value of sys_permission.id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public Long getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_permission.id
     *
     * @param id the value for sys_permission.id
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_permission.name
     *
     * @return the value of sys_permission.name
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_permission.name
     *
     * @param name the value for sys_permission.name
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_permission.description
     *
     * @return the value of sys_permission.description
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public String getDescription() {
        return description;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_permission.description
     *
     * @param description the value for sys_permission.description
     *
     * @mbggenerated Fri Nov 15 15:28:08 CST 2013
     */
    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}