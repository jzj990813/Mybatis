<%-- 在web-inf下的所有资源只能通过contorlle访问
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/1
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%--标签库--%>
<html>
<head>
    <title>用户登录界面</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/style.css">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>
</head>
<body>


<!--header-->
<!--//header-->
<!--account-->
<div class="account">
    <div class="container">
        <div class="register">
        <%--    <c:if test="${!empty msg }">
                <div class="alert alert-success">${msg }</div>
            </c:if>
            <c:if test="${!empty failMsg }">
                <div class="alert alert-danger">${failMsg }</div>
            </c:if>--%>
            <form action="${pageContext.request.contextPath}/admin/Login">
                <div class="register-top-grid">
                    <h3>用户登录</h3>
                    <c:if test="${!empty msg}">
                        <div class="alert alert-success">${msg}</div>
                    </c:if>
                    <div class="input">
                        <span>用户名 <label style="color:red;">*</label></span>
                        <input type="text" name="username" placeholder="请输入用户名" required="required">

                    </div>
                    <div class="input">
                        <span>密码 <label style="color:red;">*</label></span>
                        <input type="text" name="password" placeholder="请输入密码" required="required">
                    </div>

                    <div class="clearfix"> </div>
                </div>
                <div class="register-but text-center">
                    <input type="submit" value="登录">
                    <div class="clearfix"> </div>
                </div>
            </form>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//account-->
<!--footer-->
<%--<jsp:include page="footer.jsp"></jsp:include>--%>
<!--//footer-->
</body>
</html>
