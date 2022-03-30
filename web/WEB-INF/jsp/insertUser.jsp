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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">
    <jsp:include page="header.jsp"></jsp:include>
    <br>
    <div class="text-center"><h1>注册用户</h1></div>
    <br>
    <form class="form-horizontal" action="<%=request.getContextPath()%>/User/insert" >
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户姓名</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="name"  required="required">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户性别</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="sex" required="required" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户年龄</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="age" required="required" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户地址</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="address" required="required" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户电话</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="phone" required="required" >
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button type="submit" class="btn btn-success">提交</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>

