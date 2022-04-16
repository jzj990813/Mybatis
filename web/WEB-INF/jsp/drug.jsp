<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>药品列表</title>
    <meta charset="utf-8"/>
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

    <%=request.getContextPath()%>  /static/111.webp") no-repeat;*/
        background-size: 100%;
        color: #0ea4d6;
    }
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
    <ul role="tablist" class="nav nav-tabs">
        <%--   <li><a class="btn btn-warning text-left" href="<%=request.getContextPath()%>/Drug/select1?page=1">全部药品</a></li>--%>
        <li style="padding-left: 30%">
            <c:if test="${user.getJurisdiction()==0}">
                <form action="${pageContext.request.contextPath}/Drug/select">
                    <input type="text" name="selectName" style="font-size: 20px; height: 26px;width: 190px"
                           placeholder="请输入药品名称">
                    <input type="submit" value="查询">
                </form>
            </c:if>
        </li>
        <%--  <li style="float: right">
              <a class="btn btn-warning text-right" href="<%=request.getContextPath()%>/Drug/toInsert">添加药品</a>
          </li>--%>
    </ul>
    <%--	<li <c:if test="${type==1 }">class="active"</c:if> role="presentation"><a href="<%=request.getContextPath()%>/admin/goods_list?type=1">条幅推荐</a></li>
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
            <th>药品图片</th>
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
                <td><img src="${pageContext.request.contextPath}${drug.getImg()}" width="150" height="100"></td>
                <td>
                    <div class="text-center">
                        <a class="btn btn-warning"
                           href="${pageContext.request.contextPath}/Drug/toUpdate?id=${drug.getId()}">修改</a>
                        <a style="color: red" class="btn btn-warning"
                           href="${pageContext.request.contextPath}/Drug/delete?id=${drug.getId()}">删除</a>
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
    <div class="row justify-content-center">
        <div>
            <nav>
                <ul class="pagination">
                    <li class="page-item ${page==1?'disabled':''}"><a class="page-link"
                      href="<c:url value="/Drug/select1?page=${page-1>1?page-1:1}"/>">上一页</a>
                    </li>
                    <c:if test="${page!=1}">
                        <li class="page-item">
                            <a class="page-link" href="<c:url value="/Drug/select1?page=1"/>">1</a>
                        </li>
                    </c:if>
                    <c:if test="${page>2}">
                        <li class="page-item disabled">
                            <a class="page-link">...</a>
                        </li>
                    </c:if>
                    <li class="page-item active">
                        <a class="page-link" href="<c:url value="/Drug/select1?page=${page}"/>">${page}</a>
                    </li>
                    <c:if test="${pagination.getPageCount()-page>1 && pagination.getPageCount()!=null}">
                        <li class="page-item disabled">
                            <a class="page-link">...</a>
                        </li>
                    </c:if>
                    <c:if test="${page!=pagination.getPageCount()}">
                        <li class="page-item">
                            <a class="page-link"
                               href="<c:url value="/Drug/select1?page=${pagination.getPageCount()}"/>">${pagination.getPageCount()}</a>
                        </li>
                    </c:if>

                    <li class="page-item ${page==pagination.getPageCount()?'disabled':'1'}">
                        <a class="page-link"
                           href="<c:url value="/Drug/select1?page=${page+1<pagination.getPageCount()?page+1:pagination.getPageCount()}"/>">下一页</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</body>
</html>