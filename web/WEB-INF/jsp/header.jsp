<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/30
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default" role="navigation" style="background-color: wheat;width: 100%">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="<%=request.getContextPath()%>/Drug/select1?page=1">药店管理系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li ><a href="<%=request.getContextPath()%>/Drug/select1?page=1">药品管理</a></li>
                <li ><a href="<%=request.getContextPath()%>/Supplier/getAll">供应商管理</a></li>
                <li ><a href="<%=request.getContextPath()%>/User/getAll">用户管理</a></li>
                <li ><a href="<%=request.getContextPath()%>/Order/getAll">订单管理</a></li>
                <li ><a href="<%=request.getContextPath()%>/Type/getAll">类型管理</a></li>
                <li style="padding-left:1000px;line-height: 50px"><p style="width: 100px;color: black">管理员：${username}</p></li>
                <li><a style="color: red" href="<%=request.getContextPath()%>/admin/Out">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
