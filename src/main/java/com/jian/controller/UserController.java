package com.jian.controller;
import com.jian.pojo.User;
import com.jian.service.UserService;
import com.jian.service.IMPL.UserServiceImpl;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @autHor jzj
 * @create 2022 01 02 16:58
 */@Controller
@RequestMapping("/User")
public class UserController {
    public UserService userService=new UserServiceImpl();
   public UserController(@Qualifier("UserServiceImpl")UserService userService){
       this.userService=userService;
   }

   @RequestMapping("/getAll")
    public String getAll(Model model){
       List <User> userList=userService.getUserList();
       for (User userList1 : userList) {
           System.out.println(userList1);
       }
       model.addAttribute("userList",userList);
       return "user";
   }




    @RequestMapping("/toInsert")
    public String toInsert(){
        return "insertUser";
    }

    @RequestMapping("/insert")
    public String insert(User user){
        System.out.println(user);
        userService.addUser(user);
        return "redirect:/User/getAll";
    }





    @RequestMapping("/delete")
    public String delete(int id,Model model){
        userService.deleteUser(id);
        return "redirect:/User/getAll";
    }







   @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
       User userByID = userService.getUserByID(id);
       model.addAttribute("user",userByID);
       return "updateUser";
   }
    @RequestMapping("/update")
    public String update(User user){
        userService.updateUser(user);
        return "redirect:/User/getAll";
    }


    @RequestMapping("/select")
    public String select(String selectName,Model model){
        List<User> userLike = userService.getUserLike(selectName);
        System.out.println("");
        if(userLike.size()==0||userLike==null){
            List<User> userList = userService.getUserList();
            model.addAttribute("userList",userList);
        }else {
            model.addAttribute("userList",userLike);
            return "user";
        }
        return "redirect:/User/getAll";

    }


}
