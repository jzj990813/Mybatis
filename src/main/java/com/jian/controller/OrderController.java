package com.jian.controller;

import com.jian.pojo.Drug;
import com.jian.pojo.Order;
import com.jian.service.DrugService;
import com.jian.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
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

@RequestMapping("/Like")
    public String selectLike(Model model,String selectName){
    List<Order> orders = orderService.userList(selectName);
    if (orders.size()>0){
        model.addAttribute("orderList",orders);
        for (Order order : orders) {
            System.out.println(order);
        }
        return "orders";
    }else {
        return"redirect:/Order/getAll";
    }


}
    @RequestMapping("/toInsert")
    public String toInsert(){
        return "insertOrder";
    }

    @RequestMapping("/insert")
    public String insert(Order order){
        System.out.println(order);
        orderService.insertOrder(order);
        return "redirect:/Order/getAll";
    }



    @RequestMapping("/toUpdate")
    public String toUpdate(Model model,Integer id){
        Order order = orderService.getById(id);
        List<Drug> drugList = drugService.getDrugList();
        model.addAttribute("order",order);
        model.addAttribute("drugList",drugList);
        return "updateOrders";
    }

    @RequestMapping("/update")
    public String update(Order order){
        System.out.println(order);
        orderService.updateOrder(order);
        return "redirect:/Order/getAll";
    }

}
