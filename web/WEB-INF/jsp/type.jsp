<%--
  Created by IntelliJ IDEA.
  User: jianzhongjun
  Date: 2022/2/15
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>类型</title>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css"/>
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>


    <ul role="tablist" class="nav nav-tabs">
        <li><a class="btn btn-warning text-left" <%--href="<%=request.getContextPath()%>/Drug/getAll--%>>全部类型</a></li>
        <li style="padding-left: 650px">
            <form action="${pageContext.request.contextPath}/Drug/select">
                <input type="text" name="selectName" style="font-size: 20px; height: 26px;width: 190px" placeholder="请类型名称"  >&nbsp;&nbsp;
                <input type="submit" value="添加">
            </form>
        </li>
    </ul><%--	<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=1">条幅推荐</a></li>
		<li <c:if test="${type==2 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=2">热销推荐</a></li>
		<li <c:if test="${type==3 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=3">新鲜花推荐</a></li>--%>
    <br>
    <table class="table table-bordered table-hover">
        <tr>
            <th>类型ID</th>
            <th>类型名称</th>
            <th>操作</th>
        </tr>

        <c:forEach var="type" items="${typeList}">
            <tr>
                <td>${type.getId()}</td>
                <td>${type.getName()}</td>
                <td>
                    <div class="text-center">
                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/Drug/toUpdate?id=${type.getId()}">修改</a>
                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/Drug/delete?id=${type.getId()}">删除</a>
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
