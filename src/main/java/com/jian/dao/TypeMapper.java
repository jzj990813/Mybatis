package com.jian.dao;

import com.jian.pojo.Type;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TypeMapper {
    List<Type> selectType();
    Type selectById(int id);
    int updateType(Type type);
    int deleteType(int id);
    int insertType(Type type);
}
