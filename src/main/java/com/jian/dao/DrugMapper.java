package com.jian.dao;
import com.jian.pojo.Drug;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public interface DrugMapper {
    //获取全部用户
    List<Drug> getDrugList();
    //根据id查询用户
    Drug getDrugByID(int id);
    //添加用户
    int addDrug(Drug drug);
    //修改用户
    int updateDrug(Drug drug);
    //删除用户
    int deleteDrug(int id);
    //模糊查询
    List<Drug> getDrugLike(String value);
    //分页查询
    List<Drug> getDrugLimit(Map<String,Integer> map);
    int count();

}
