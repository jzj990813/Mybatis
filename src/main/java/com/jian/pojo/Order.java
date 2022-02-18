package com.jian.pojo;



import java.sql.Date;
import java.util.Objects;


public class Order {
private int id;
private String userName;
private String drugName;
private String  typeName;
private int money;
private Date date;

    public Order() {
    }

    public Order(int id, String userName, String drugName, String typeName, int money, Date date) {
        this.id = id;
        this.userName = userName;
        this.drugName = drugName;
        this.typeName = typeName;
        this.money = money;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return id == order.id && money == order.money && Objects.equals(userName, order.userName) && Objects.equals(drugName, order.drugName) && Objects.equals(typeName, order.typeName) && Objects.equals(date, order.date);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userName, drugName, typeName, money, date);
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", drugName='" + drugName + '\'' +
                ", typeName='" + typeName + '\'' +
                ", money=" + money +
                ", date=" + date +
                '}';
    }
}
