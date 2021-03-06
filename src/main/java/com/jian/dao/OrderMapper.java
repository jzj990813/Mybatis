package com.jian.dao;

import com.jian.pojo.Order;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface OrderMapper {
    List<Order> getAll();
    List<Order> selectAll();
    List<Order> userList(String name);
    int  deleteOrder(int id);
    int insertOrder(Order order);
    int updateOrder(Order order);
    Order getById(int id);

}
