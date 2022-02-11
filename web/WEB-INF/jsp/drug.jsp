<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/2
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%--标签库--%>
<%--美化页面bootstra--%>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/style.css">
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body style="background-color:yellowgreen">
<%--<jsp:include page="top.jsp"></jsp:include>
<jsp:include page="left.jsp"></jsp:include>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h3>
                    <small>药品列表</small>
                </h3>
                <div>
                    <ul style="align-content: center">
                        <form action="${pageContext.request.contextPath}/Drug/select">
                            <input type="text" name="selectName" style="font-size: 20px; height: 26px;width: 190px" placeholder="请输入所查询名称">&nbsp;&nbsp;
                            <input type="submit" value="查询">
                        </form>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="table-bordered">
            <table class="table">
                <thead>
                <tr>
                    <th>药品ID</th>
                    <th>药品名称</th>
                    <th>药品类型</th>
                    <th>有效日期</th>
                    <th>库存</th>
                    <th>采购价格</th>
                    <th>销售价格</th>
                    <th>生产地址</th>
                    <th>药品描述</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="drug" items="${drugList}">
                    <tr>
                        <td>${drug.getId()}</td>
                        <td>${drug.getName()}</td>
                        <td>${drug.getType()}</td>
                        <td>${drug.getDate()}</td>
                        <td>${drug.getStock()}</td>
                        <td>${drug.getpPrice()}</td>
                        <td>${drug.getsPrice()}</td>
                        <td>${drug.getAddress()}</td>
                        <td>${drug.getDescription()}</td>
                        <td>
                            <a style="color: chocolate" href="${pageContext.request.contextPath}/Drug/toUpdate?id=${drug.getId()}">修改</a>
                            <a style="color: chocolate" href="${pageContext.request.contextPath}/Drug/delete?id=${drug.getId()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div>

        </div>
    </div>
</div>--%>


</body>
</html>
