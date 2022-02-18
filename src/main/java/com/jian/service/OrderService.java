package com.jian.service;

import com.jian.pojo.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService {
    List<Order> getAll();
    List<Order> selectAll();
}
