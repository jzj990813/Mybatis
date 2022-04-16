package com.jian.controller;

import com.jian.pojo.Drug;
import com.jian.pojo.Order;
import com.jian.pojo.Type;
import com.jian.pojo.User;
import com.jian.service.DrugService;
import com.jian.service.OrderService;
import com.jian.service.TypeService;
import com.jian.service.UserService;
import com.jian.utils.FileTest;
import com.jian.utils.PaginationHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("/Drug")
public class DrugController {
    @Autowired
    private DrugService drugService;
      /*  public DrugController(@Qualifier("DrugServiceImpl")DrugService drugService){
      this.drugService=drugService;
    }*/
    @Autowired
    private TypeService typeService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private UserService userService;
    @Autowired
    private  FileTest fileTest;
    private static PaginationHelper pagination=new PaginationHelper();
    int m=5;
    int i=0;
    private static List<Drug>  drugList=new ArrayList<>();
    private static List<Integer>  numberList=new ArrayList<>();


    @RequestMapping("/getAll")
    public String getAll(Model model) {
        List<Drug> drugList = drugService.getDrugList();
        for (Drug drug : drugList) {
            System.out.println(drug);
        }
        model.addAttribute("drugList", drugList);
        return "drug";
    }

    @RequestMapping("/getAll1")
    public String getAll1(Model model) {
        List<Drug> drugList = drugService.getDrugList();
        for (Drug drug : drugList) {
            System.out.println(drug);
        }
        model.addAttribute("drugList", drugList);
        return "goods_lis";
    }


    @RequestMapping("/toInsert")
    public String toInsert(Model model) {
        List<Type> types = typeService.selectType();
        model.addAttribute("typeList", types);
        return "insertDrug";
    }

   /* @RequestMapping("/insert")
    public String insert(Drug drug) {
        System.out.println(drug);
        drugService.addDrug(drug);
        *//*return "redirect:/Drug/getAll";*//*
        return "redirect:/Drug/select1?page=1";
    }*/
   @PostMapping("/insert")
   public String insert(Drug drug, @RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) throws IOException {
       String upload = fileTest.upload(file, request);
       drug.setImg(upload);
       System.out.println(drug.getImg());
       drugService.addDrug(drug);
       /*return "redirect:/Drug/getAll";*/
       return "redirect:/Drug/select1?page=1";
   }


    @RequestMapping("/delete")
    public String delete(int id) {
        drugService.deleteDrug(id);
        /*return "redirect:/Drug/getAll";*/
        return "redirect:/Drug/select1?page=1";
    }


    @RequestMapping("/toUpdate")
    public String toUpdate(int id, Model model) {
        Drug drugByID = drugService.getDrugByID(id);
        List<Type> types = typeService.selectType();
        model.addAttribute("typeList", types);
        model.addAttribute("drug", drugByID);
        return "updateDrug";
    }

    @PostMapping("/update")
    public String update(Drug drug,@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) throws IOException {
        String upload = fileTest.upload(file, request);
        drug.setImg(upload);
        drugService.updateDrug(drug);
        return "redirect:/Drug/select1?page=1";
    }

    @RequestMapping("/select")
    public String select(Model model, String selectName) {
        List<Drug> drugList = drugService.getDrugLike(selectName);
        model.addAttribute("drugList", drugList);
        if (drugList.size() > 0) {
            return "drug";
        } else {
            return "redirect:/Drug/select1?page=1";
        }

    }


    @RequestMapping("/select1")
    public String select1(Model model,int page){
        if(page==1){
            i= page;
        }else {
                i = (page-1)*5;
        }
        int count = drugService.count();
        pagination.setTotalCount(count);
        pagination.setCountPerPage(m);

        //map参数的使用
        HashMap<String, Integer> map = new HashMap<>();

        map.put("startIndex",i);
        map.put("pageSize",m);
        List<Drug> drugLimit = drugService.getDrugLimit(map);
        for (Drug drug : drugLimit) {
            System.out.println(drug);
        }



        model.addAttribute("drugList",drugLimit);

        model.addAttribute("pagination",pagination);
        model.addAttribute("page",page);
        return "drug";
    }

   /* @RequestMapping("/shoppingDrug")
    public String buy(int id,String number,HttpSession session){
        Drug drug = drugService.getDrugByID(id);
        int stock = drug.getStock();
        System.out.println(number);
        drugList.add(drug);
        int size = drugList.size();
        Integer integer = Integer.valueOf(number);
        numberList.add(integer);
        session.setAttribute("number",numberList);
        session.setAttribute("drug",drugList);
        session.setAttribute("size",size);
        stock=stock-integer;
        drug.setStock(stock);
        drugService.updateDrug(drug);
        return "redirect:/admin/buy";
    }*/

    //获取购历史订单
    @RequestMapping("/shopping")
    public String shopping(HttpSession session, Model model) {
        int userId = (int) session.getAttribute("id");
        List<Order> orders = orderService.selectStop(userId);
        model.addAttribute("orderList", orders);
        return "shopping";
    }


    @RequestMapping("/buyDrug")
    public String buyDrug(HttpSession session, int id,int userid, String number) {
        System.out.println(userid);
        Drug drug = drugService.getDrugByID(id);
        String name = drug.getName();
        int stock = drug.getStock();
        Integer integer = Integer.valueOf(number);
        Order order = new Order();
        order.setDrugName(name);
        if (session.getAttribute("user") == null) {
            return "login";
        } else {
            User userByID = userService.getUserByID(userid);
            order.setUserName(userByID.getName());
            order.setSum(integer);
            Date date = new Date(System.currentTimeMillis());
            order.setDate((date));
            order.setStatus("已付款");
            orderService.insertOrder(order);
            stock = stock - integer;
            drug.setStock(stock);
            drugService.updateDrug(drug);
            return "redirect:/admin/buy";
        }


    }

    @RequestMapping("/buyCar")
    public String buyCar(HttpSession session, int id,int userid,String number) {
        Drug drug = drugService.getDrugByID(id);
        String name = drug.getName();
        Order order = new Order();
        order.setDrugName(name);
        if (session.getAttribute("user") == null) {
            return "login";
        } else {
            User userByID = userService.getUserByID(userid);
            order.setUserName(userByID.getName());
            order.setSum(1);
            Date date = new Date(System.currentTimeMillis());
            order.setDate((date));
            order.setStatus("未付款");
            orderService.insertOrder(order);
            return "redirect:/admin/buy";
        }

    }
}