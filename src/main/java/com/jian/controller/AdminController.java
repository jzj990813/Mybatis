package com.jian.controller;

import com.jian.pojo.Admin;
import com.jian.pojo.Drug;
import com.jian.pojo.User;
import com.jian.service.AdminService;
import com.jian.service.DrugService;

import com.jian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @autHor jzj
 * @create 2021 12 26 15:54
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    //controller调用service层
    @Autowired
    public AdminService adminService;
    @Autowired
    public DrugService drugService;
    @Autowired
    public UserService userService;


    @RequestMapping("/goAdd")
    public String goAdd(){
        return "addAdmin";
    }
    @RequestMapping("add")
    public String insert(Admin admin){
        adminService.addAdmin(admin);
        return "main";
    }

    @RequestMapping("/allAdmins")
    public String list(Model model){
        List<Admin> admin = adminService.getAdminList();
        for (Admin admin1 : admin) {
            System.out.println(admin1);
        }
        model.addAttribute("adminList",admin);
        return "allBook";
    }
    @RequestMapping("/goLogin")
    public String goLogin(){
        return "login";
        }



    @RequestMapping("/main")
    public String Main(){

        return "main";
    }



   @RequestMapping("/Login")
    public String login(HttpSession session,String username,String password,Model model){
       Admin adminLike = adminService.getAdminLike(username);
       String msg="";
       if (adminLike!=null){
           if(adminLike.getNaem().equals(username) && adminLike.getPassword().equals(password)) {
               //把用户信息存在session中
               session.setAttribute("username", username);
               model.addAttribute("username", username);
               return "main";
           } else {
               msg="输入有误";
               model.addAttribute(msg);
               return "login";
           }
       }
       return "login";
    }
    @RequestMapping("/Out")
    public String OutLogin(HttpSession session){
        //把用户信息存在session中
        session.removeAttribute("username");
        session.removeAttribute("number");
        session.removeAttribute("drug");
        return "login";
    }

    @RequestMapping("/buy")
    public String buy(Model model){
        List<Drug> drugList = drugService.getDrugList();
        model.addAttribute("drugList",drugList);
        return "buy";
    }
    @RequestMapping("/userLogin")
    public String userLogin(HttpSession session,String username,String password,Model model) {
        User user = userService.getUserName(username);
        String msg = "";
        if (user != null) {
                if (user.getName().equals(username) && user.getPassword().equals(password)) {
                    //把用户信息存在session中
                    session.setAttribute("username", username);
                    model.addAttribute("username", username);
                    return "main";
                } else {
                    msg = "输入有误";
                    model.addAttribute(msg);
                    return "login";
                }
            }
            return "login";

        }
}
