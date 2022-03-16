package com.jian.service.IMPL;

import com.jian.dao.SupplierMapper;
import com.jian.pojo.Supplier;
import com.jian.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SupplierServiceImpl implements SupplierService {
    @Autowired
    SupplierMapper supplierMapper;
    @Override
    public List<Supplier> getAll() {
        return supplierMapper.getAll();
    }

    @Override
    public Supplier getById(int id) {
        return supplierMapper.getById(id);
    }
    @Override
    public int updateSup(Supplier supplier){
        return supplierMapper.updateSup(supplier);
    }

    @Override
    public int insertSup(Supplier supplier) {
        return supplierMapper.insertSup(supplier);
    }

    @Override
    public int deleteSup(int id) {
        return supplierMapper.deleteSup(id);
    }

    @Override
    public List<Supplier> selectLike(String name) {
        return supplierMapper.selectLike(name);
    }
}
