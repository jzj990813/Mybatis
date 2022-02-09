package com.jian.service.IMPL;

import com.jian.dao.DrugMapper;
import com.jian.pojo.Drug;
import com.jian.service.DrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class DrugServiceImpl implements DrugService {
    @Autowired
    private DrugMapper drugMapper;
    public void setDrugMapper(DrugMapper drugMapper) {
        this.drugMapper=drugMapper;
    }

    @Override
    public List<Drug> getDrugList() {
        return drugMapper.getDrugList();
    }

    @Override
    public Drug getDrugByID(int id) {
        return drugMapper.getDrugByID(id);
    }

    @Override
    public int addDrug(Drug drug) {
        return drugMapper.addDrug(drug);
    }

    @Override
    public int updateDrug(Drug drug) {
        return drugMapper.updateDrug(drug);
    }

    @Override
    public int deleteDrug(int id) {
        return drugMapper.deleteDrug(id);
    }

    @Override
    public List<Drug> getDrugLike(String value) {
        return drugMapper.getDrugLike(value);
    }

    @Override
    public List<Drug> getDrugLimit(Map<String, Integer> map) {
        return drugMapper.getDrugLimit(map);
    }
}
