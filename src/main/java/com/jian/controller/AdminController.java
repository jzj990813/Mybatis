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
        return "redirect:/Drug/select1?page=1";
        }



    @RequestMapping("/main")
    public String Main(){

        return "main";
    }



   @RequestMapping("/AdminLogin")
    public String login(HttpSession session,String username,String password,Model model){
       Admin adminLike = adminService.getAdminLike(username);
       String msg="";
       if (adminLike!=null){
           if(adminLike.getName().equals(username) && adminLike.getPassword().equals(password)) {
               //把用户信息存在session中
               session.setAttribute("user", adminLike);
               model.addAttribute("username", username);
               return"redirect:/Drug/select1?page=1";
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
        session.removeAttribute("user");
        return "userLogin";
    }

    @RequestMapping("/buy")
    public String buy(Model model){
        List<Drug> drugList = drugService.getDrugList();
        model.addAttribute("drugList",drugList);
        return "buy";
    }







    @RequestMapping("/userGoLogin")
    public String userGoLogin(){
        return "userLogin";
    }

    @RequestMapping("/userLogin")
    public String userLogin(HttpSession session,String username,String password,Model model) {
        User user = userService.getUserName(username);

        if (user != null) {
            if (user.getName().equals(username) && user.getPassword().equals(password)) {
                //把用户信息存在session中
                session.setAttribute("user", user);
                session.setAttribute("id",user.getId());
                model.addAttribute("username", user.getName());
                return "main";
            } else {
                String msg = "密码有误";
                model.addAttribute("msg", msg);
                return "userLogin";
            }
        }else {
            String msg = "用户不存在";
            System.out.println(msg);
            model.addAttribute("msg", msg);
            return "userLogin";
        }
    }
}
