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
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <!-- 引入ElementUI组件库 -->
    <!-- 引入组件库 -->
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
<%--    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css">--%>
<%--    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/style.css">--%>
<%--    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>--%>
<%--    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>--%>
<%--    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>--%>
</head>
<body>
${username}
<%--此页当主页--%>
<a href="${pageContext.request.contextPath}/admin/buy">用户页面</a></body>
<p>你好</p>
<el-row>
    <el-button>默认按钮</el-button>
    <el-button type="primary">主要按钮</el-button>
    <el-button type="success">成功按钮</el-button>
    <el-button type="info">信息按钮</el-button>
    <el-button type="warning">警告按钮</el-button>
    <el-button type="danger">危险按钮</el-button>
</el-row>

</html>
<script>

</script>