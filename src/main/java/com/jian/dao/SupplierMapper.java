package com.jian.dao;

import com.jian.pojo.Supplier;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface SupplierMapper {
    List<Supplier> getAll();
    Supplier getById(int id);
    int updateSup(Supplier supplier);
    int insertSup(Supplier supplier);
    int deleteSup(int id);
}
