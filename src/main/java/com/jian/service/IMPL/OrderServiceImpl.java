package com.jian.service.IMPL;

import com.jian.dao.OrderMapper;
import com.jian.pojo.Order;
import com.jian.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    public OrderMapper orderMapper;
    public void setOrderMapper(OrderMapper orderMapper){
        this.orderMapper=orderMapper;
    }

    @Override
    public List<Order> getAll() {
        return orderMapper.getAll();
    }

    @Override
    public List<Order> selectAll() {
        return orderMapper.selectAll();
    }

    @Override
    public List<Order> userList(String name) {
        return orderMapper.userList(name);
    }

    @Override
    public int insertOrder(Order order) {
        return orderMapper.insertOrder(order);
    }

    @Override
    public int updateOrder(Order order) {
       return orderMapper.updateOrder(order);
    }

    @Override
    public Order getById(int id) {
        return orderMapper.getById(id);
    }

    @Override
    public int deleteOrder(int id) {
        return orderMapper.deleteOrder(id);
    }


}
