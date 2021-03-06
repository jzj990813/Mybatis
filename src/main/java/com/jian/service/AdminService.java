package com.jian.service;

import com.jian.pojo.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @autHor jzj
 * @create 2021 12 26 15:04
 */
@Service
public interface AdminService {
    //获取全部管理员
    List<Admin> getAdminList();
    //根据id查询管理员
    Admin getAdminByID(int id);
    //添加管理员
    int addAdmin(Admin admin);
    //修改管理员
    int updateAdmin(Admin admin);
    //删除管理员
    int deleteAdmin(int id);
    //模糊查询
    Admin getAdminLike(String value);
    //分页查询
    List<Admin> getAdminLimit(Map<String,Integer> map);
    /*注解开发*/
    @Select("select * from admin")
    List<Admin> getAdmin();
    @Select("select * from `admin` where id=#{id}")
    Admin getAdminById(@Param("id") int id);//多个参数就用多个@Param
}
