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
    <form class="form-horizontal" action="${pageContext.request.contextPath}/User/update?id=${user.getId()}">
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户ID：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="id"  value="${user.id}" readonly="readonly">
            </div>
        </div>
        <div class="form-group">
            <div>
                <label  class="col-sm-1 control-label">用户姓名：</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control"   name="name"  value="${user.name}" required="required">
                </div>
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户性别：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="sex"  value="${user.sex}" required="required">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户年龄：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="age"  value="${user.age}" required="required">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户地址：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="address"  value="${user.address}" required="required">
            </div>
        </div>
        <div class="form-group">
            <label  class="col-sm-1 control-label">用户电话：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="phone"  value="${user.phone}" required="required">
            </div>
        </div>

<%-- <div class="form-group">
     <label for="select_topic" class="col-sm-1 control-label">类目</label>
     <div class="col-sm-6">
         <select class="form-control" id="select_topic" name="typeid">
             <c:forEach items="${typeList }" var="t">
                 <option <c:if test="${t.id==g.type.id }">selected="selected"</c:if> value="${t.id }">${t.name }</option>
             </c:forEach>

         </select>
     </div>
 </div>--%>
<div class="form-group">
    <div class="col-sm-offset-1 col-sm-10">
        <button type="submit" class="btn btn-success">提交修改</button>
    </div>
    <div class="col-sm-offset-1 col-sm-10">
        <a  style="padding-left: 10px" href="<%=request.getContextPath()%>/User/getAll">返回</a>
    </div>
</div>
</form>

</body>
</html>
