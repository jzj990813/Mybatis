<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/2
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%--标签库--%>
<%--美化页面bootstra--%>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
    <title>Title</title>
</head>

<body>
<jsp:include page="top.jsp"></jsp:include>
<jsp:include page="left.jsp"></jsp:include>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h3>
                        <small>用户列表</small>
                    </h3>
                    <div>
                        <ul style="align-content: center">
                        <form action="${pageContext.request.contextPath}/User/select">
                            <input type="text" name="selectName" style="font-size: 20px; height: 26px;width: 190px" placeholder="请输入所查询姓名">&nbsp;&nbsp;
                            <input type="submit" value="查询">
                        </form>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="table-bordered">
                <table class="table">
                    <thead>
                    <tr>
                        <th>用户ID</th>
                        <th>用户姓名</th>
                        <th>用户性别</th>
                        <th>用户年龄</th>
                        <th>用户住址</th>
                        <th>用户电话</th>
                        <th>编辑用户</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${userList}">
                            <tr>
                                <td>${user.getId()}</td>
                                <td>${user.getName()}</td>
                                <td>${user.getSex()}</td>
                                <td>${user.getAge()}</td>
                                <td>${user.getAddress()}</td>
                                <td>${user.getPhone()}</td>
                                <td>
                                    <a style="color: chocolate" href="${pageContext.request.contextPath}/User/toUpdate?id=${user.getId()}">修改</a>
                                    <a style="color: chocolate" href="${pageContext.request.contextPath}/User/delete?id=${user.getId()}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div>

            </div>
        </div>
    </div>
</body>
</html>
