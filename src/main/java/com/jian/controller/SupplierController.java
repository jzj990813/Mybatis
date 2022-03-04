package com.jian.controller;

import com.jian.pojo.Drug;
import com.jian.pojo.Supplier;
import com.jian.pojo.Type;
import com.jian.service.DrugService;
import com.jian.service.SupplierService;
import com.jian.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Supplier")
public class SupplierController {
    @Autowired
   private SupplierService supplierService;
    @Autowired
    private DrugService drugService;
    @Autowired
    private TypeService typeService;
    @RequestMapping("/getAll")
    public String getAll(Model model){
        List<Supplier> List = supplierService.getAll();
        model.addAttribute("supList",List);
        return "supplier";
    }



    @RequestMapping("/toUpdate")
    public String updateSup(Model model,int id){
        List<Type> typeList = typeService.selectType();
        Supplier supplier = supplierService.getById(id);
        model.addAttribute("supplier",supplier);
        model.addAttribute("typeList",typeList);
        return "updateSup";
    }
    @RequestMapping("/update")
    public String update(Supplier supplier){
        supplierService.updateSup(supplier);
        return "redirect:/Supplier/getAll";
    }


    @RequestMapping("/toInsert")
    public String insertSup(Model model){
        List<Type> typeList = typeService.selectType();
        model.addAttribute("typeList",typeList);
        return "insertSup";
    }
    @RequestMapping("/insert")
    public String insert(Supplier supplier){
        supplierService.insertSup(supplier);
        return "redirect:/Supplier/getAll";
    }

    @RequestMapping("/delete")
    public String delete(int id){
        supplierService.deleteSup(id);
        return "redirect:/Supplier/getAll";
    }

}
