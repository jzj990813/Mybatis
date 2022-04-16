package com.jian.controller;

import com.jian.pojo.Drug;
import com.jian.pojo.Order;
import com.jian.service.DrugService;
import com.jian.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

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
    for (Order order : orders) {
        System.out.println(order);
    }
    model.addAttribute("orderList",orders);
    return "orders";
}
//获取
    @RequestMapping("/getStop")
    public String getStop(HttpSession session,Model model){
        int id = (int)session.getAttribute("id");
        List<Order> orders = orderService.selectStop(id);
        for (Order order : orders) {
            System.out.println(order);
        }
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
    public String toInsert(Model model){
        List<Drug> drugList = drugService.getDrugList();
        model.addAttribute("drugList",drugList);
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


    @RequestMapping("/delete")
    public String delete(int id){
    orderService.deleteOrder(id);
    return "redirect:/Order/getAll";
    }
    //获取用户购物车物品
    @RequestMapping("/selectCar")
    public String selectCar(HttpSession session,Model model){
        int id = (int)session.getAttribute("id");
        List<Order> orderList = orderService.selectCar(id);
        if(orderList==null){
            model.addAttribute("msg","用户购物车为空");
        }
        model.addAttribute("orderList",orderList);
        return "shopping";
    }


    //结账功能
    @RequestMapping("/checkout")
    public String checkout(int id){
        Order order = orderService.getById(id);
        orderService.checkout(order);
        return "redirect:/Order/selectCar";
    }
    @RequestMapping("/checkAll")
    @ResponseBody
    public String checkAll(List<Drug> list){
        for (Drug drug : list) {
            System.out.println(drug);
        }
        return "ok";
    }

    //管理员查询未付款
    @RequestMapping("/adminSelectStop")
    public String adminSelectStop(Model model){
        List<Order> orders = orderService.adminSelectStop();
        model.addAttribute("orderList",orders);
        return "orders";
    }

    //管理员查询已付款
    @RequestMapping("/adminSelectCar")
    public String adminSelectCar(Model model){
        List<Order> orders = orderService.adminSelectCar();
        model.addAttribute("orderList",orders);
        return "orders";
    }

}
