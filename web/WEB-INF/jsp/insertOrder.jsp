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
    <title>修改订单</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">
    <jsp:include page="header.jsp"></jsp:include>
    <br><br>
    <form class="form-horizontal" action="<%=request.getContextPath()%>/Order/insert" >
        <%--<div class="form-group">
            <label  class="col-sm-1 control-label">药品名称</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="name"  required="required">
            </div>
        </div>--%>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户名</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="userName" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">药名</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="drugName" >
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label">类型</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="typeName" >
            </div>
        </div>
            <div class="form-group">
                <label  class="col-sm-1 control-label">数量</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control"  name="sum"  >
                </div>
            </div>
        <div class="form-group hidden">
            <label  class="col-sm-1 control-label">金钱</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="money"  >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">时间</label>
            <div class="col-sm-6">
                <input type="date" class="form-control"  name="date">
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

