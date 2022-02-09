package com.jian.controller;

import com.jian.pojo.Drug;
import com.jian.service.DrugService;
import com.jian.service.IMPL.DrugServiceImpl;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Drug")
public class DrugController {
    private DrugService drugService=new DrugServiceImpl();
    public DrugController(@Qualifier("DrugServiceImpl")DrugService drugService){
      this.drugService=drugService;
    }

    @RequestMapping("/getAll")
    public String getAll(Model model){
        List<Drug> drugList = drugService.getDrugList();
        for (Drug drug : drugList) {
            System.out.println(drug);
        }
        model.addAttribute("drugList",drugList);
        return "drug";
    }


    @RequestMapping("/toInsert")
    public String toInsert(){
        return "insertDrug";
    }

    @RequestMapping("/insert")
    public String insert(Drug drug){
        System.out.println(drug);
        drugService.addDrug(drug);
        return "redirect:/Drug/getAll";
    }




    @RequestMapping("/delete")
    public String delete(int id){
        drugService.deleteDrug(id);
        return "drug";
    }


    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
        Drug drugByID = drugService.getDrugByID(id);
        model.addAttribute("drug",drugByID);
        return "updateDrug";
    }
    @RequestMapping("/update")
    public String update(Drug drug){
        drugService.updateDrug(drug);
        return "redirect:/Drug/getAll";
    }

    @RequestMapping("/select")
    public String select(Model model,String selectName){
        List<Drug> drugList = drugService.getDrugLike(selectName);
        model.addAttribute("drugList",drugList);
        if (drugList.size()>0){
            return "drug";
        }else {
            return"redirect:/Drug/getAll";
        }

    }
}
