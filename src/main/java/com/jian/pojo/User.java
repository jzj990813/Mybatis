package com.jian.pojo;

import java.util.Objects;

/**用户
 * @autHor jzj
 * @create 2022 01 02 16:38
 */
public class User {
    private int id;
    private String name;
    private String password;
    private String sex;
    private int age;
    private String address;
    private String phone;
    private int Jurisdiction;

    public User() {
    }

    public User(int id, String name, String password, String sex, int age, String address, String phone, int jurisdiction) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.sex = sex;
        this.age = age;
        this.address = address;
        this.phone = phone;
        Jurisdiction = jurisdiction;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getName() {
        return name;
    }

    public String getSex() {
        return sex;
    }

    public int getAge() {
        return age;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getJurisdiction() {
        return Jurisdiction;
    }

    public void setJurisdiction(int jurisdiction) {
        Jurisdiction = jurisdiction;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id && age == user.age && Jurisdiction == user.Jurisdiction && Objects.equals(name, user.name) && Objects.equals(password, user.password) && Objects.equals(sex, user.sex) && Objects.equals(address, user.address) && Objects.equals(phone, user.phone);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, password, sex, age, address, phone, Jurisdiction);
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", Jurisdiction=" + Jurisdiction +
                '}';
    }
}
