package com.jian.controller;

import com.jian.dao.DrugMapper;
import com.jian.pojo.Drug;
import com.jian.pojo.Order;
import com.jian.service.DrugService;
import com.jian.service.IMPL.DrugServiceImpl;
import com.jian.service.IMPL.OrderServiceImpl;
import com.jian.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Order")
public class OrderController {
    @Autowired
    private OrderService orderService;
  /*  public OrderController(@Qualifier("OrderServiceImpl")OrderService orderService){
        this.orderService=orderService;
    }*/
    @Autowired
    private  DrugService drugService;

@RequestMapping("/getAll")
public String getAll(Model model){
    List<Order> orders = orderService.selectAll();
    model.addAttribute("orderList",orders);
    return "orders";
}


}
