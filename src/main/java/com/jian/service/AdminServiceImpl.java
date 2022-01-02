package com.jian.service;

import com.jian.dao.AdminMapper;
import com.jian.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @autHor jzj
 * @create 2021 12 26 15:05
 */
@Service
public class AdminServiceImpl implements AdminService {


// 组合dao层
    @Autowired
    private AdminMapper adminMapper;
    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public List<Admin> getAdminList() {
        return adminMapper.getAdminList();
    }

    @Override
    public Admin getAdminByID(int id) {
        return adminMapper.getAdminByID(id);
    }

    @Override
    public int addAdmin(Admin admin) {
        return adminMapper.addAdmin(admin);
    }

    @Override
    public int updateAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }

    @Override
    public int deleteAdmin(int id) {
        return adminMapper.deleteAdmin(id);
    }

    @Override
    public List<Admin> getAdminLike(String value) {
        return adminMapper.getAdminLike(value);
    }

    @Override
    public List<Admin> getAdminLimit(Map<String, Integer> map) {
        return adminMapper.getAdminLimit(map);
    }

    @Override
    public List<Admin> getAdmin() {
        return adminMapper.getAdmin();
    }

    @Override
    public Admin getAdminById(int id) {
        return adminMapper.getAdminById(id);
    }
}
