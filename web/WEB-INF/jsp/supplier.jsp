<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: jianzhongjun
  Date: 2022/2/15
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css"/>
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>


    <ul role="tablist" class="nav nav-tabs">
        <li><a class="btn btn-warning text-left" href="<%=request.getContextPath()%>/Supplier/getAll">合作伙伴</a></li>
        <li style="padding-left: 650px">
            <form action="${pageContext.request.contextPath}/Supplier/selectLike">
                <input type="text" name="selectName" style="font-size: 20px; height: 26px;width: 190px" placeholder="请输入查询名称">&nbsp;&nbsp;
                <input type="submit" value="查询">
            </form>
        </li>
         <li style="padding-left: 814px">
             <a class="btn btn-warning " href="<%=request.getContextPath()%>/Supplier/toInsert">添加伙伴</a>
         </li>
    </ul><%--	<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=1">条幅推荐</a></li>
		<li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=2">热销推荐</a></li>
		<li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=3">新鲜花推荐</a></li>--%>
    <br>
    <table class="table table-bordered table-hover">
        <tr>
            <th>商家id</th>
            <th>商家名称</th>
            <th>主售类型</th>
            <th>地址</th>
            <th>电话</th>
            <th>操作</th>

        </tr>

        <c:forEach var="supplier" items="${supList}">

            <tr>
                <td>${supplier.getId()}</td>
                <td>${supplier.getName()}</td>
                <td>${supplier.getTypeName()}</td>
                <td>${supplier.getAddress()}</td>
                <td>${supplier.getPhone()}</td>

                <td>
                    <div class="text-center">
                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/Supplier/toUpdate?id=${supplier.getId()}">修改</a>
                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/Supplier/delete?id=${supplier.getId()}">删除</a>
                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/Supplier/toUpdate?id=${supplier.getId()}">交易</a>
                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/Supplier/delete?id=${supplier.getId()}">记录</a>
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
