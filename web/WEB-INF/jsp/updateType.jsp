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
    <title>修改类型</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">
    <jsp:include page="header.jsp"></jsp:include>
    <br><br>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/Type/update?id=${typeList.getId()}" >
        <div class="form-group">
            <label  class="col-sm-1 control-label">类型id</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="id"  value="${typeList.getId()}" readonly="readonly">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">类型名称</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="name" value="${typeList.getName()}">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">描述</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="description"  value="${typeList.getDescription()}">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button type="submit" class="btn btn-success">提交修改</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
<%-- <div class="form-group">
           <label  class="col-sm-1 control-label">库存数量</label>
           <div class="col-sm-6">
               <input type="text" class="form-control" name="pPrice" >
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
       </div>--%>
