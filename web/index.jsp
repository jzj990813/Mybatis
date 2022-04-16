<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/1
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<link href="style.css" rel="stylesheet">
<script src='https://unpkg.com/flipping@1.1.0/dist/flipping.web.js'></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<div class="head">
    <a href="${pageContext.request.contextPath}/admin/userGoLogin">进入主页面</a>
    <%--<a href="${pageContext.request.contextPath}/admin/goLogin">进入管理员页面</a>--%>
    <a href="${pageContext.request.contextPath}/User/toEnroll">注册</a>
</div>
<div class="main" style="height: 94%;width: 100%;overflow: hidden">

</div>

<%--上传文件  enctype="multipart/form-data"
  <form action="${pageContext.request.contextPath}/file/upload" enctype="multipart/form-data" method="post">
     <input type="file" name="file"/>
    <input type="submit" name="upload" />
  </form>
  文件下载
  <a href="${pageContext.request.contextPath}/static/1.png">下载 </a>--%>


</body>
</html>
<style>
    .main {
   background: url("<%=request.getContextPath()%>/static/111.webp") no-repeat;
        background-size: 100% 100%;
    }

    .head {
        height: 40px;
        text-align: center;
        background-color: #0ea4d6;
    }

    a {
        text-decoration: none;
        outline: none;
        color: #fff;
        width: 50px;
        line-height: 40px;
        border: 1px solid #ccc;
        margin-right: 20px;
        padding: 10px;
        background-color: #2e6da4;
    }
</style>