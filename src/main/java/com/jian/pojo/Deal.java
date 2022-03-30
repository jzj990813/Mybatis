package com.jian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Deal {
    private int id;
    private String adminName;
    private String supName;
    private String drugName;
    private int count;
    private int gmv;
    private Date date;
}
