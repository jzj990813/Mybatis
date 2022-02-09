<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/2
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%--标签库--%>
<html>
<head>
    <title>修改用户</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Drug/insert">
    <div>
        <label>药品名称：</label>
        <input type="text" name="name" class="" >
    </div>
    <div>
        <label>药品类型：</label>
        <input type="text" name="type" class="" >
    </div>
    <div>
        <label>有效日期：</label>
        <input type="date" name="date" class="">
    </div>
    <div>
        <label>库存数量：</label>
        <input type="text" name="stock" class="" >
    </div>
    <div>
        <label>采购价格：</label>
        <input type="text" name="pPrice" class="" >
    </div>
    <div>
        <label>销售价格：</label>
        <input type="text" name="sPrice" class="" >
    </div>
    <div>
        <label>生产地址：</label>
        <input type="text" name="address" class="" >
    </div>
    <div>
        <label>药品描述：</label>
        <input type="text" name="description" class="">
    </div>
    <div>
        <input type="submit"  class="" value="确认">
    </div>
</form>

</body>
</html>

