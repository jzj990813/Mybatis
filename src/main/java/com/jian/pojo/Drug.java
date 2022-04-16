package com.jian.pojo;

import lombok.Data;

import java.sql.Date;
import java.util.Objects;

/*
 药品模块：
        编号  id   主键  int
        名称  name           verchar
        类型  type
        有效日期 Date
        库存  Stock
        采购价格   pPrice
        售价   sPrice
        地址 address
        描述  Description
        图片 img
 */
public class Drug {
    private int id;
    private String name;
    private String type;
    private Date date;
    private int stock;
    private int pPrice;
    private int sPrice;
    private String address;
    private String description;
    private String img;

    public Drug() {
    }

    public Drug(int id, String name, String type, Date date, int stock, int pPrice, int sPrice, String address, String description) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.date = date;
        this.stock = stock;
        this.pPrice = pPrice;
        this.sPrice = sPrice;
        this.address = address;
        this.description = description;
    }

    public Drug(String name, String type, Date date, int stock, int pPrice, int sPrice, String address, String description) {
        this.name = name;
        this.type = type;
        this.date = date;
        this.stock = stock;
        this.pPrice = pPrice;
        this.sPrice = sPrice;
        this.address = address;
        this.description = description;
    }

    public Drug(int id, String name, String type, Date date, int stock, int pPrice, int sPrice, String address, String description, String img) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.date = date;
        this.stock = stock;
        this.pPrice = pPrice;
        this.sPrice = sPrice;
        this.address = address;
        this.description = description;
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }

    public int getsPrice() {
        return sPrice;
    }

    public void setsPrice(int sPrice) {
        this.sPrice = sPrice;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Drug drug = (Drug) o;
        return id == drug.id && stock == drug.stock && pPrice == drug.pPrice && sPrice == drug.sPrice && Objects.equals(name, drug.name) && Objects.equals(type, drug.type) && Objects.equals(date, drug.date) && Objects.equals(address, drug.address) && Objects.equals(description, drug.description) && Objects.equals(img, drug.img);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, type, date, stock, pPrice, sPrice, address, description, img);
    }

    @Override
    public String toString() {
        return "Drug{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", date=" + date +
                ", stock=" + stock +
                ", pPrice=" + pPrice +
                ", sPrice=" + sPrice +
                ", address='" + address + '\'' +
                ", description='" + description + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}
