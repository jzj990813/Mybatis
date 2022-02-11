<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/23
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>

<!--header-->
<div class="header">
    <div class="container">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a href="<%=request.getContextPath()%>/admin/main">鲜花专卖店</a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/admin/main">首页</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle  data-toggle="dropdown>鲜花分类<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-2">
                            <li>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4>鲜花分类</h4>
                                        <ul class="multi-column-dropdown">
                                            <li><a class="list" href="<%=request.getContextPath()%>/Drug/getAll">全部系列</a></li>
                                            <c:forEach items="${drugList}" var="t">
                                                <li><a class="list" href="<%=request.getContextPath()%>/Drug/select?id=${t.id}">${t.name}</a></li>
                                            </c:forEach>


                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                        <li><a href="<%=request.getContextPath()%>/admin/allAdmins">注册</a></li>
                        <li><a href="<%=request.getContextPath()%>/admin/goLogin" >登录</a></li>
                        <li><a href="${pageContext.request.contextPath}/admin/Out">注销</a></li>
<%--
                    <c:if test="${!empty user && user.isadmin }">
                        <li><a href="<%=request.getContextPath()%>/admin/index.jsp" target="_blank">后台管理</a></li>
                    </c:if>--%>
                </ul>
                <!--/.navbar-collapse-->
            </div>
            <!--//navbar-header-->
        </nav>
        <div class="header-info">
            <div class="header-right search-box">
                <a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
                <div class="search">
                    <form class="navbar-form" action="<%=request.getContextPath()%>/Drug/select">
                        <input type="text" class="form-control" name="keyword">
                        <button type="submit" class="btn btn-default  aria-label="Left Align>搜索</button>
                    </form>
                </div>
            </div>

            <div class="header-right cart">
                <a href=" ">
                    <span class="glyphicon glyphicon-shopping-cart  aria-hidden="true><span class="card_num">
                        <c:choose><c:when test="${empty order}">0</c:when><c:otherwise>${order.amount}</c:otherwise></c:choose></span></span>
                </a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//header-->