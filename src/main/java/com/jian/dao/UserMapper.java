package com.jian.dao;

import com.jian.pojo.Admin;
import com.jian.pojo.User;

import java.util.List;
import java.util.Map;

/**
 * @autHor jzj
 * @create 2022 01 02 16:24
 */
public interface UserMapper {
    //获取全部用户
    List<User> getUserList();
    //根据id查询用户
    User getUserByID(int id);
    //添加用户
    int addUser(User user);
    //修改用户
    int updateUser(User user);
    //删除用户
    int deleteUser(int id);
    //模糊查询
    List<User> getUserLike(String value);
    //分页查询
    List<User> getUserLimit(Map<String,Integer> map);

}
