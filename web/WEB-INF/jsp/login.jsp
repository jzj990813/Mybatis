<%-- 在web-inf下的所有资源只能通过contorlle访问
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/1
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录界面</title>

</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Login" method="post">
    用户名：<input type="text" name="username">
    密 码：<input type="text" name="password">
    <input type="submit" value="登录">
</form>


</body>
</html>
