package com.jian.dao;

import com.jian.pojo.Order;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface OrderMapper {
    List<Order> getAll();
    List<Order> selectAll();
}
