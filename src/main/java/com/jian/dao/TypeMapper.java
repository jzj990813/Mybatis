package com.jian.dao;

import com.jian.pojo.Type;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TypeMapper {
    int addType();
    List<Type> selectType();
}
