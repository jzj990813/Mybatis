<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>鲜花列表</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css"/>
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>


    <ul role="tablist" class="nav nav-tabs">
        <li><a class="btn btn-warning text-left" href="<%=request.getContextPath()%>/Drug/getAll">全部药品</a></li>
        <li style="padding-left: 650px">
                <form action="${pageContext.request.contextPath}/">
                    <input type="text" name="selectName" style="font-size: 20px; height: 26px;width: 190px" placeholder="请输入查询名称">&nbsp;&nbsp;
                    <input type="submit" value="查询">
                </form>
        </li>
        <li style="padding-left: 814px">
            <a class="btn btn-warning " href="<%=request.getContextPath()%>/Drug/toInsert">添加药品</a>
        </li>
    </ul><%--	<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=1">条幅推荐</a></li>
		<li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=2">热销推荐</a></li>
		<li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=3">新鲜花推荐</a></li>--%>
    <br>
    <table class="table table-bordered table-hover">
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
                    <div class="text-center">
                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/Drug/toUpdate?id=${drug.getId()}">修改</a>
                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/Drug/delete?id=${drug.getId()}">删除</a>
                    </div>
                </td>
            </tr>
        </c:forEach>

    </table>
    <br>
   <%-- <jsp:include page="page.jsp">
      &lt;%&ndash;  <jsp:param value="/admin/goods_list" name="url"/>
        <jsp:param value="&type=${type }" name="param"/>&ndash;%&gt;
    </jsp:include>--%>
    <br>
</div>
</body>
</html>