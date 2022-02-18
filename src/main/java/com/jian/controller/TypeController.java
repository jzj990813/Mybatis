package com.jian.controller;

import com.jian.pojo.Type;
import com.jian.service.IMPL.TypeServiceImpl;
import com.jian.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Type")
public class TypeController {
    private TypeService typeService=new TypeServiceImpl();
    public TypeController(@Qualifier("TypeServiceImpl")TypeService typeService){
        this.typeService=typeService;

    }
    @RequestMapping("/getAll")
    public  String getAll(Model model){
        List<Type> types = typeService.selectType();
       model.addAttribute("typeList",types);
        return "type";
    }
}
