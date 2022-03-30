package com.jian.pojo;


/**数据库实体类 可用注解起别名
 * @autHor jzj
 * @create 2021 12 11 14:48
 */
public class Admin   {
    private int id;
    private String name;
   private  String password;
   private int Permissions;//权限  用于判断是否展示后台界面



    public Admin(int id, String name, String password, int permissions) {
        this.id = id;
        this.name = name;
        this.password = password;
        Permissions = permissions;
    }

    public Admin() {
    }

    public Admin(int id, String name, String password) {
        this.id = id;
        this.name =name;
        this.password = password;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPermissions() {
        return Permissions;
    }

    public void setPermissions(int permissions) {
        Permissions = permissions;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", Permissions=" + Permissions +
                '}';
    }
}
