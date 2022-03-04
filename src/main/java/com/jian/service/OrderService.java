package com.jian.service;

import com.jian.pojo.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
    List<Order> getAll();
    List<Order> selectAll();
    List<Order> userList(String name);
    int insertOrder(Order order);
    int updateOrder(Order order);
    Order getById(int id);
}
