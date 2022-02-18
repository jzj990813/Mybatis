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
    <br><br>
    <form class="form-horizontal" action="<%=request.getContextPath()%>/Drug/insert" >
        <div class="form-group">
            <label  class="col-sm-1 control-label">药品名称</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="name"  required="required">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">药品类型</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="type" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">有效日期</label>
            <div class="col-sm-6">
                <input type="date" class="form-control"  name="date" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">库存数量</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="pPrice" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">采购价格</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="stock" >
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label">销售价格</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="sPrice" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">生产地址</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="address"  >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">药品描述</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="description"  >
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

