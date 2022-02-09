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
<form action="${pageContext.request.contextPath}/User/update?id=${user.getId()}">
    <div >
    <label>用户ID：${user.id}</label>
        <input type="hidden"  name="id" class="" value="${user.id}">
    </div>
    <div>
        <label>用户姓名：</label>
        <input type="text" name="name" class="" value="${user.name}">
    </div>
    <div>
        <label>用户性别：</label>
        <input type="text" name="sex" class="" value="${user.sex}">
    </div>
    <div>
        <label>用户年龄：</label>
        <input type="text" name="age" class="" value="${user.age}">
    </div>
    <div>
        <label>用户地址：</label>
        <input type="text" name="address" class="" value="${user.address}">
    </div>
    <div>
        <label>用户电话：</label>
        <input type="text" name="phone" class="" value="${user.phone}">
    </div>
    <div>
        <input type="submit"  class="" value="确认">
    </div>
</form>

</body>
</html>
