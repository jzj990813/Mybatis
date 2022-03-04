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
    <title>添加药品</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap.css"/>
</head>
<script>
    function change() {
        let sheet = $("#role").val();//下拉框
        alert(sheet)
        $("#state").val(sheet);
    }
</script>
<body>
<div class="container-fluid">
    <jsp:include page="header.jsp"></jsp:include>
    <br><br>
    <form class="form-horizontal" action="<%=request.getContextPath()%>/Supplier/insert" >
        <div class="form-group">
            <label  class="col-sm-1 control-label">商家名称</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="name"  required="required">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">主售类型</label>
            <input type="text" class="hidden" id="state" name="typeName"  value="心脑血管类"/>
            <!--一个普通的下拉框-->
            <select name="role" id="role" onchange="change()">
                <c:forEach var="types" items="${typeList}">
                    <option selected="selected" name="type" value="${types.name}">${types.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">地址</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"  name="address" >
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">电话</label>
        <div class="col-sm-6">
            <input type="text" class="form-control"  name="phone" >
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

