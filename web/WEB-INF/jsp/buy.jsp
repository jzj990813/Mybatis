<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>主页</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css"/>
</head>
<script>

</script>
<style>
</style>
<body>
<div class="container-fluid">
    <ul style="width: 100%;height: 100px">
        <P style="font-size: 50px;color: red">欢迎${username}来到阿俊药店</P>
    </ul>
    <ul role="tablist" class="nav nav-tabs">
        <li><a class="btn btn-warning text-left" href="<%=request.getContextPath()%>/Drug/getAll">全部药品</a></li>
        <li><a class="btn btn-warning text-right" href="<%=request.getContextPath()%>/Drug/shopping">查看购物车</a></li>
        <li><a class="btn btn-warning text-right" href="<%=request.getContextPath()%>/admin/goLogin">后台</a></li>
        <li><a class="btn btn-warning text-right" href="<%=request.getContextPath()%>/admin/Out">退出</a></li>
    </ul>
    <br>
    <table class="table table-bordered table-hover">
        <tr>
            <th>药品名称</th>
            <th>药品类型</th>
            <th>有效日期</th>
            <th>库存</th>
            <th>价格</th>
            <th>生产地址</th>
            <th>药品描述</th>
            <th>操作</th>
        </tr>

        <c:forEach var="drug" items="${drugList}">
            <tr>
                <td class="hidden">${drug.getId()}</td>
                <td>${drug.getName()}</td>
                <td>${drug.getType()}</td>
                <td>${drug.getDate()}</td>
                <td>${drug.getStock()}</td>
                <td class="hidden">${drug.getpPrice()}</td>
                <td>${drug.getsPrice()}</td>
                <td>${drug.getAddress()}</td>
                <td>${drug.getDescription()}</td>

                <td>

                    <div class="text-center">
                        <form action="${pageContext.request.contextPath}/Drug/buyDrug">
                             <input class="hidden" name="id" value=${drug.getId()}>
                            <input type="text" name="number"  value="1">
                            <input type="submit" value="购买">
                        </form>
                    </div>

                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>