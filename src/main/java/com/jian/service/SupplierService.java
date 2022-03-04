package com.jian.service;

import com.jian.pojo.Supplier;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface SupplierService {
    List<Supplier> getAll();
    Supplier getById(int id);
    int updateSup(Supplier supplier);
    int insertSup(Supplier supplier);
    int deleteSup(int id);
}
