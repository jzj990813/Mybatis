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
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function change() {
            let sheet = $("#role").val();//下拉框
            alert(sheet)
            $("#state").val(sheet);
        }
    </script>
</head>
<style>
    .container-fluid {
        height: 650px;
        width: 90%;
        float: right;
        padding: 20px;
        border: 1px solid #ccc;
        /* background: url("
    <%=request.getContextPath()%> /static/111.webp") no-repeat;*/
        background-size: 100%;
        color: #0ea4d6;
    }
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">



    <br><br>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/Supplier/update">
        <div class="form-group">
            <label  class="col-sm-1 control-label">药品ID：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="id"  value="${supplier.id}" readonly="readonly">
            </div>
        </div>
        <div class="form-group">
            <div>
                <label  class="col-sm-1 control-label">商家名称：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control"   name="name"  value="${supplier.name}" required="required">
                </div>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">主售类型：</label>
            <div class="col-sm-6">
                <%--<input type="text" class="form-control"   name="type"  value="${drug.type}" required="required">--%>

                <input type="text" class="hidden" id="state" name="typeName"  value="${supplier.typeName}"/>
                <!--一个普通的下拉框-->
                <select name="role" id="role" onchange="change()">
                    <c:forEach var="types" items="${typeList}">
                        <option selected="selected" name="type" value="${types.name}">${types.name}</option>
                    </c:forEach>
                </select>

            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">地址：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="address"  value="${supplier.address}" required="required">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">电话：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="phone"  value="${supplier.phone}" required="required">
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
