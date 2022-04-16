<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/2
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%--标签库--%>

<html>
<head>
    <title>用户界面</title>
    <%--美化页面bootstra--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css"/>
    <%--  <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
      <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>
      <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css">--%>
</head>
<style>
    .container-fluid {
        height: 650px;
        width: 90%;
        float: right;
        padding: 20px;
        border: 1px solid #ccc;
        /*background: url("
    <%=request.getContextPath()%> /static/iu.jpg") no-repeat;*/
        background-size: 100%;
        color: #0ea4d6;
    }
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
    <ul role="tablist" class="nav nav-tabs">
        <%--<li><a class="btn btn-warning text-left" href="<%=request.getContextPath()%>/User/getAll">全部用户</a></li>--%>
        <li style="padding-left: 30%">
            <c:if test="${user.getJurisdiction()==0}">
                <form action="${pageContext.request.contextPath}/User/select">
                    <input type="text" name="selectName" style="font-size: 20px; height: 26px;width: 190px"
                           placeholder="请输入查询名称">&nbsp;&nbsp;
                    <input type="submit" value="查询">
                </form>
            </c:if>
        </li>
        <%--  <li style="padding-left: 41%">
              <a class="btn btn-warning text-right " href="<%=request.getContextPath()%>/User/toInsert">添加用户</a>
          </li>--%>
    </ul>
    <%--	<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=1">条幅推荐</a></li>
            <li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=2">热销推荐</a></li>
            <li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=3">新鲜花推荐</a></li>--%>
    <br>
    <table class="table table-bordered table-hover">
        <tr>
            <th>用户ID</th>
            <th>用户姓名</th>
            <th>用户性别</th>
            <th>用户年龄</th>
            <th>用户住址</th>
            <th>用户电话</th>
            <th>编辑用户</th>
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td>${user.getId()}</td>
                <td>${user.getName()}</td>
                <td>${user.getSex()}</td>
                <td>${user.getAge()}</td>
                <td>${user.getAddress()}</td>
                <td>${user.getPhone()}</td>
                <td>
                    <div class="text-center">
                        <a style="color: chocolate"
                           href="${pageContext.request.contextPath}/User/toUpdate?id=${user.getId()}">修改</a>
                        <a style="color: chocolate"
                           href="${pageContext.request.contextPath}/User/delete?id=${user.getId()}">删除</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <%-- <jsp:include page="page.jsp">
       &lt;%&ndash;  <jsp:param value="/admin/goods_list" name="url"/>
         <jsp:param value="&type=${type }" name="param"/>&ndash;%&gt;
     </jsp:include>--%>
    <br>
</div>
</body>
</html>
