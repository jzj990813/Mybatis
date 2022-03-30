package com.jian.dao;

import com.jian.pojo.Deal;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DealMapper {
 //根据id查询交易
 List<Deal>  getDealList(int id);
 //添加
 Deal insertDeal();

}
