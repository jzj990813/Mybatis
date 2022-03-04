package com.jian.controller;

import com.jian.pojo.Type;
import com.jian.service.IMPL.TypeServiceImpl;
import com.jian.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Type")
public class TypeController {
    @Autowired
    private TypeService typeService/*=new TypeServiceImpl()*/;
    /*public TypeController(@Qualifier("TypeServiceImpl")TypeService typeService){
        this.typeService=typeService;

    }*/
    @RequestMapping("/getAll")
    public  String getAll(Model model){
        List<Type> types = typeService.selectType();
       model.addAttribute("typeList",types);
        return "type";
    }
    @GetMapping ("/getType")
    public  String getType(Model model){
        List<Type> types = typeService.selectType();
        model.addAttribute("typeList",types);
        return "type";
    }
    @RequestMapping("/toUpdate")
    public String toUpdate(Model model,int id){
        Type type = typeService.selectById(id);
        model.addAttribute("typeList",type);
        return "updateType";
    }

    @RequestMapping("/update")
    public String update(Type type){
        typeService.updateType(type);
        return "redirect:/Type/getAll";
    }



    @RequestMapping("/delete")
    public String delete(int id){
        typeService.deleteType(id);
        return "redirect:/Type/getAll";
    }
}
