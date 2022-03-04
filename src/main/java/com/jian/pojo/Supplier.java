package com.jian.pojo;

import java.util.Objects;

public class Supplier {
    private int id;
    private String name;
    private String typeName;
    private String address;
    private String phone;

    public Supplier() {
    }

    public Supplier(int id, String name, String typeName, String address, String phone) {
        this.id = id;
        this.name = name;
        this.typeName = typeName;
        this.address = address;
        this.phone = phone;
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

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Supplier supplier = (Supplier) o;
        return id == supplier.id && Objects.equals(name, supplier.name) && Objects.equals(typeName, supplier.typeName) && Objects.equals(address, supplier.address) && Objects.equals(phone, supplier.phone);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, typeName, address, phone);
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", typeName='" + typeName + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
