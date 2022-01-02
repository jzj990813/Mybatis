<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/1
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <a href="${pageContext.request.contextPath}/admin/goLogin">进入管理员页面</a>
  <a href="${pageContext.request.contextPath}/admin/main">进入管理员页面</a>

<%--上传文件  enctype="multipart/form-data"--%>
  <form action="${pageContext.request.contextPath}/file/upload" enctype="multipart/form-data" method="post">
     <input type="file" name="file"/>
    <input type="submit" name="upload" />
  </form>
<%--  文件下载--%>
  <a href="${pageContext.request.contextPath}/static/1.png">下载 </a>
  </body>
</html>
