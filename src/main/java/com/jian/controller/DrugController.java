package com.jian.controller;

import com.jian.pojo.Drug;
import com.jian.pojo.Type;
import com.jian.service.DrugService;
import com.jian.service.TypeService;
import com.jian.utils.PaginationHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.HashMap;
import java.util.List;

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
    private static PaginationHelper pagination=new PaginationHelper();
    int m=5;
    int i=0;
    @RequestMapping("/getAll")
    public String getAll(Model model){
        List<Drug> drugList = drugService.getDrugList();
        for (Drug drug : drugList) {
            System.out.println(drug);
        }
        model.addAttribute("drugList",drugList);
        return "drug";
    }
    @RequestMapping("/getAll1")
    public String getAll1(Model model){
        List<Drug> drugList = drugService.getDrugList();
        for (Drug drug : drugList) {
            System.out.println(drug);
        }
        model.addAttribute("drugList",drugList);
        return "goods_lis";
    }


    @RequestMapping("/toInsert")
    public String toInsert(Model model){
        List<Type> types = typeService.selectType();
        model.addAttribute("typeList",types);
        return "insertDrug";
    }

    @RequestMapping("/insert")
    public String insert(Drug drug){
        System.out.println(drug);
        drugService.addDrug(drug);
        /*return "redirect:/Drug/getAll";*/
        return "redirect:/Drug/select1?page=1";
    }




    @RequestMapping("/delete")
    public String delete(int id){
        drugService.deleteDrug(id);
        /*return "redirect:/Drug/getAll";*/
        return "redirect:/Drug/select1?page=1";
    }


    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
        Drug drugByID = drugService.getDrugByID(id);
        List<Type> types = typeService.selectType();
        model.addAttribute("typeList",types);
        model.addAttribute("drug",drugByID);
        return "updateDrug";
    }
    @RequestMapping("/update")
    public String update(Drug drug){
        drugService.updateDrug(drug);
        return "redirect:/Drug/select1?page=1";
    }

    @RequestMapping("/select")
    public String select(Model model,String selectName){
        List<Drug> drugList = drugService.getDrugLike(selectName);
        model.addAttribute("drugList",drugList);
        if (drugList.size()>0){
            return "drug";
        }else {
            return"redirect:/Drug/select1?page=1";
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




}
