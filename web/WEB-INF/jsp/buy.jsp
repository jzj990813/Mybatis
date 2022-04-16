<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
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
    <ul style="width: 100%;height: 100px;text-align: center;background-color: #cccccc">

        <div style="margin-right: 50px">
            <p class="text-left" style="font-size: 50px;color: red">欢迎${user.getName()}来到阿俊药店</p>
            <div class="text-right">
                <a href="/User/Update">${user.getName()}</a>
                <a href="<%=request.getContextPath()%>/admin/Out">退出</a>
            </div>
        </div>
    </ul>
    <div>
        <ul role="tablist" class="nav nav-tabs">
            <li><a class="btn btn-warning text-left" href="<%=request.getContextPath()%>/Drug/getAll">全部药品</a></li>
            <li><a class="btn btn-warning text-right" href="<%=request.getContextPath()%>/Order/selectCar">查看购物车</a>
            </li>
            <li><a class="btn btn-warning text-right" href="<%=request.getContextPath()%>/Order/getStop">查看历史记录</a></li>
            <c:if test="${user.getJurisdiction()==0}">
                <li><a class="btn btn-warning text-right" href="<%=request.getContextPath()%>/admin/goLogin">后台</a></li>
            </c:if>
            <%--<li style="float: right"><a class="btn btn-warning text-right"
                                        href="<%=request.getContextPath()%>/admin/Out">退出</a></li>--%>
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
                <th>图片</th>
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
                    <td><img src="${pageContext.request.contextPath}${drug.getImg()}" width="150" height="100"></td>
                    <td>
                        <div style="display: flex">
                            <div class="text-center">
                                <form action="${pageContext.request.contextPath}/Drug/buyDrug">
                                    <input class="hidden" name="id" value=${drug.getId()}>
                                    <input class="hidden" name="userid" value=${user.getId()}>
                                    <input type="text" name="number" value="1" style="width: 50px;">
                                    <input type="submit" value="购买">
                                </form>
                            </div>
                            <div>
                                <form action="${pageContext.request.contextPath}/Drug/buyCar">
                                    <input class="hidden" name="id" value=${drug.getId()}>
                                    <input type="hidden" name="number" value="1">
                                    <input class="hidden" name="userid" value=${user.getId()}>
                                    <input type="submit" value="添加到购物车">
                                </form>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>