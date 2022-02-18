package com.jian.service;


import com.jian.pojo.Type;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TypeService {
    List<Type> selectType();
  }
