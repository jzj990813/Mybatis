package com.jian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Trade {
    private int id;
    private String supName;
    private String drugName;
    private int sum;
    private int money;
    private Date date;
}
