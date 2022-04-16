<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>订单</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css"/>
</head>
<style>
    .container-fluid {
        height: 650px;
        width: 90%;
        float: right;
        padding: 20px;
        border: 1px solid #ccc;
        /* background: url("


    <%=request.getContextPath()%>   /static/111.webp") no-repeat;*/
        background-size: 100%;
        color: #0ea4d6;
    }
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
    <ul role="tablist" class="nav nav-tabs">
        <li style="padding-left: 30%">
            <c:if test="${user.getJurisdiction()==0}">
                <form action="${pageContext.request.contextPath}/Order/Like">
                    <input type="text" name="selectName" style="font-size: 20px; height: 26px;width: 190px"
                           placeholder="请输入查询名称">&nbsp;&nbsp;
                    <input type="submit" value="查询">
                </form>
            </c:if>
        </li>
        <%--        <li style="padding-left: 41%">--%>
        <%--            <a class="btn btn-warning text-right" href="<%=request.getContextPath()%>/Order/toInsert"></a>--%>
        <%--        </li>--%>
    </ul>
    <%--	<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=1">条幅推荐</a></li>
            <li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=2">热销推荐</a></li>
            <li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=3">新鲜花推荐</a></li>--%>
    <br>
    <table class="table table-bordered table-hover">
        <tr>
            <th>订单号</th>
            <th>买药人</th>
            <th>药品名称</th>
            <th>药品类型</th>
            <th>数量</th>
            <th>总金额</th>
            <th>购买时间</th>
            <th>是否付款</th>
            <th>操作</th>
        </tr>

        <c:forEach var="order" items="${orderList}">

            <tr>
                <td>${order.getId()}</td>
                <td>${order.getUserName()}</td>
                <td>${order.getDrugName()}</td>
                <td>${order.getTypeName()}</td>
                <td>${order.getSum()}</td>
                <td>${order.getMoney()}</td>
                <td>${order.getDate()}</td>
                <td>${order.getStatus()}</td>
                <td>
                    <div class="text-center">
                        <a class="btn btn-warning"
                           href="${pageContext.request.contextPath}/Order/checkout">购买</a>
                        <a class="btn btn-warning hidden"
                           href="${pageContext.request.contextPath}/Order/delete?id=${order.getId()}">取消</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
        <li>
            <a class="btn btn-warning text-right" href="${pageContext.request.contextPath}/">结账</a>
        </li>
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
<script>
    if (${orderList}) {

    } else {
        alert(${msg})
    }
</script>