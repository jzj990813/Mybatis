package com.jian.service.IMPL;

import com.jian.dao.AdminMapper;
import com.jian.dao.TypeMapper;
import com.jian.pojo.Type;
import com.jian.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {
    @Autowired
    TypeMapper typeMapper;
    public void setTypeMapper(TypeMapper typeMapper) {
        this.typeMapper = typeMapper;
    }
    @Override
    public List<Type> selectType() {
        List<Type> types = typeMapper.selectType();
        return types;
    }

    @Override
    public int updateType(Type type) {

        return typeMapper.updateType(type);
    }

    @Override
    public int deleteType(int id) {
        return typeMapper.deleteType(id);
    }

    @Override
    public Type selectById(int id) {
        return typeMapper.selectById(id);
    }

}
