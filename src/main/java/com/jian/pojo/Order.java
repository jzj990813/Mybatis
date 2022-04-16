package com.jian.pojo;



import java.sql.Date;
import java.util.Objects;


public class Order {
private int id;
private String userName;
private String drugName;
private String  typeName;
private int sum;
private String money;
private Date date;
private String status;

    public Order() {
    }

    public Order(String userName, String drugName, String typeName, int sum, Date date, String status) {
        this.id = id;
        this.userName = userName;
        this.drugName = drugName;
        this.typeName = typeName;
        this.sum=sum;
        /*this.money = money;*/
        this.date = date;
        this.status=status;
    }



    public Order(int id, String userName, String drugName, String typeName, int sum, String money, Date date) {
        this.id = id;
        this.userName = userName;
        this.drugName = drugName;
        this.typeName = typeName;
        this.sum=sum;
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
    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        if (status.equals("0")) {
            this.status = "已付款";
            return;
        }else if (status.equals("1")){
            this.status="未付款";
            return;
        }
        if (status.equals("已付款")) {
            this.status = "0";
        }else {
            this.status="1";
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return id == order.id && sum == order.sum && status == order.status && Objects.equals(userName, order.userName) && Objects.equals(drugName, order.drugName) && Objects.equals(typeName, order.typeName) && Objects.equals(money, order.money) && Objects.equals(date, order.date);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userName, drugName, typeName, sum, money, date, status);
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", drugName='" + drugName + '\'' +
                ", typeName='" + typeName + '\'' +
                ", sum=" + sum +
                ", money='" + money + '\'' +
                ", date=" + date +
                ", status=" + status +
                '}';
    }
}
