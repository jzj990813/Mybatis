package com.jian.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Shopping {
    private int id;//购物车id
    private int userId;//买药人id
    private int drugId;//药品id
    private int num;//药品数量
    private int total;//药品总价
    private int state;//是否付款  付款将添加到订单中

}
