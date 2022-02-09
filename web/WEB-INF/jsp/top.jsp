<%--
  Created by IntelliJ IDEA.
  User: jianzhongjun
  Date: 2022/2/9
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table style="background: #66ffcc" sborder="0" width="100%" height="50px" align="top">
    <tr style="margin-left: 100px">
        <td style="padding-left: 100px;color: red" >
            ${username}，欢迎登录药店管理系统！
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/admin/Out" class="exit">
                退出系统
            </a>
        </td>
    </tr>
</table>


</body>
</html>
