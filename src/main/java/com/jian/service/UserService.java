package com.jian.service;

import com.jian.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @autHor jzj
 * @create 2022 01 02 16:59
 */
@Service
public interface UserService {
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
