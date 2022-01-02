package com.jian.pojo;


import com.mysql.fabric.xmlrpc.base.Data;

import java.util.Objects;

/**药品
  DROP TABLE IF EXISTS `drug`;
  CREATE TABLE `drug`  (
 `id` int(11) NOT NULL COMMENT '药品id',
 `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药品名称',
 `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生产厂家',
 `date` date NOT NULL COMMENT '生产日期',
 `inventory` int(11) NOT NULL COMMENT '库存',
 `therapy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '针对症状',
 `prohibit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '禁止使用范围',
  PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

 SET FOREIGN_KEY_CHECKS = 1;
 * @autHor jzj
 * @create 2022 01 02 16:25
 */
public class Drug {
    private int id;
    private String name;
    private String manufacture;
    private Data date;
    private int inventory;
    private String therapy ;
    private String prohibit;

    public Drug() {
    }

    public Drug(String name, String manufacture, Data date, int inventory, String therapy, String prohibit) {
        this.name = name;
        this.manufacture = manufacture;
        this.date = date;
        this.inventory = inventory;
        this.therapy = therapy;
        this.prohibit = prohibit;
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

    public String getManufacture() {
        return manufacture;
    }

    public void setManufacture(String manufacture) {
        this.manufacture = manufacture;
    }

    public Data getDate() {
        return date;
    }

    public void setDate(Data date) {
        this.date = date;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public String getTherapy() {
        return therapy;
    }

    public void setTherapy(String therapy) {
        this.therapy = therapy;
    }

    public String getProhibit() {
        return prohibit;
    }

    public void setProhibit(String prohibit) {
        this.prohibit = prohibit;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Drug drug = (Drug) o;
        return id == drug.id && inventory == drug.inventory && Objects.equals(name, drug.name) && Objects.equals(manufacture, drug.manufacture) && Objects.equals(date, drug.date) && Objects.equals(therapy, drug.therapy) && Objects.equals(prohibit, drug.prohibit);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, manufacture, date, inventory, therapy, prohibit);
    }

    @Override
    public String toString() {
        return "Drug{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", manufacture='" + manufacture + '\'' +
                ", date=" + date +
                ", inventory=" + inventory +
                ", therapy='" + therapy + '\'' +
                ", prohibit='" + prohibit + '\'' +
                '}';
    }
}
