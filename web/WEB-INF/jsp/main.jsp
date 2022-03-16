<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/1
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
    <title>主页</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/style.css">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>
</head>
<body>
${username}
<%--此页当主页--%>
<a href="${pageContext.request.contextPath}/admin/buy">用户页面</a></body>
</html>
