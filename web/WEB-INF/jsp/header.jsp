<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
    li{
        list-style: none;
    }
    .cd-main-content .cd-navigation .sub-menu li{
        margin-bottom: 5px;
        width: 100px;
    }
    #cd-lateral-nav ul{
        margin-left: -20px;
    }
    #cd-lateral-nav{
        /*border: 1px solid #000;*/
    }
    /*.item-has-children>a{*/
    /*    display: block;*/
    /*    border: 1px solid #000;*/
    /*    margin-bottom: 10px;*/
    /*}*/
</style>
<header style="height: 80px;display: flex;background-color:	#C7C7C7;justify-content: space-between;align-items: center">
    <div style="display: flex">
        <img src="https://pic1.zhimg.com/v2-871309eae26834217531d509ea9fbd51_r.jpg?source=1940ef5c"
             style="width: 50px;border-radius: 50%;overflow: hidden">
        <h1>阿俊药店</h1>
    </div>
    <div style="margin-right: 50px">
        <a href="/User/Update">${user.getName()}</a>
        <a href="<%=request.getContextPath()%>/admin/Out">退出</a>
    </div>


</header>
<c:if test="${user.getJurisdiction()==0}">
<main class="cd-main-content" style="float: left;width: 150px;height:600px;background-color: #C7C7C7">
    <!-- put your content here -->
    <nav id="cd-lateral-nav">
        <ul class="cd-navigation">
            <li class="item-has-children">
                <a href="#0">药品管理</a>
                <ul class="sub-menu">
                    <!-- all its children here -->
                    <li><a href="<%=request.getContextPath()%>/Drug/select1?page=1">全部药品</a></li>
                    <li><a href="<%=request.getContextPath()%>/Drug/toInsert">药品添加</a></li>
                </ul>
            </li>
            <!-- other .item-has-children here -->
        </ul>
        <ul class="cd-navigation">
            <li class="item-has-children">
                <a href="#0">用户管理</a>
                <ul class="sub-menu">
                    <!-- all its children here -->
                    <li><a href="<%=request.getContextPath()%>/User/getAll">全部用户</a></li>
                    <li><a href="<%=request.getContextPath()%>/User/toInsert">添加用户</a></li>
                </ul>
            </li>
            <!-- other .item-has-children here -->
        </ul>
        <ul class="cd-navigation">
            <li class="item-has-children">
                <a href="#0">订单管理</a>
                <ul class="sub-menu">
                    <!-- all its children here -->
                    <li><a href="<%=request.getContextPath()%>/Order/getAll">全部订单</a></li>
                    <li><a href="<%=request.getContextPath()%>/Order/toInsert">添加订单</a></li>
                    <li><a href="<%=request.getContextPath()%>/Order/adminSelectStop">已付款订单</a></li>
                    <li><a href="<%=request.getContextPath()%>/Order/adminSelectCar">未付款订单</a></li>
                </ul>
            </li>
            <!-- other .item-has-children here -->
        </ul>
        <ul class="cd-navigation">
            <li class="item-has-children">
                <a href="#0">供应商管理</a>
                <ul class="sub-menu">
                    <!-- all its children here -->
                    <li><a href="<%=request.getContextPath()%>/Supplier/getAll">全部供应商</a></li>
                    <li><a href="<%=request.getContextPath()%>/Supplier/toInsert">添加供应商</a></li>
                </ul>
            </li>
            <!-- other .item-has-children here -->
        </ul>
        <ul class="cd-navigation">
            <li class="item-has-children">
                <a href="#0">类型管理</a>
                <ul class="sub-menu">
                    <!-- all its children here -->
                    <li><a href="<%=request.getContextPath()%>/Type/getAll">全部类型</a></li>
                    <li><a href="<%=request.getContextPath()%>/">添加类型</a></li>
                </ul>
            </li>
            <!-- other .item-has-children here -->
        </ul>
    </nav>

</main>
</c:if>

<style>
    .cd-main-content {
        /* set a min-height and a z-index to be sure that the main element completely covers the lateral menu */
        min-height: 100%;
        z-index: 2;
        transition-property: transform;
        transition-duration: 0.4s;
    }

    .cd-main-content.lateral-menu-is-open {
        transform: translateX(-260px);
    }
</style>
<script>
    jQuery(document).ready(function ($) {
        var $lateral_menu_trigger = $('#cd-menu-trigger'),
            $content_wrapper = $('.cd-main-content'),
            $navigation = $('header');
        //open-close lateral menu clicking on the menu icon
        $lateral_menu_trigger.on('click', function (event) {
            event.preventDefault();
            $lateral_menu_trigger.toggleClass('is-clicked');
            $navigation.toggleClass('lateral-menu-is-open');
            $content_wrapper.toggleClass('lateral-menu-is-open').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function () {
                // firefox transitions break when parent overflow is changed, so we need to wait for the end of the trasition to give the body an overflow hidden
                $('body').toggleClass('overflow-hidden');
            });
            $('#cd-lateral-nav').toggleClass('lateral-menu-is-open');

            //check if transitions are not supported - i.e. in IE9
            if ($('html').hasClass('no-csstransitions')) {
                $('body').toggleClass('overflow-hidden');
            }
        });
        //close lateral menu clicking outside the menu itself
        $content_wrapper.on('click', function (event) {
            if (!$(event.target).is('#cd-menu-trigger, #cd-menu-trigger span')) {
                $lateral_menu_trigger.removeClass('is-clicked');
                $navigation.removeClass('lateral-menu-is-open');
                $content_wrapper.removeClass('lateral-menu-is-open').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', function () {
                    $('body').removeClass('overflow-hidden');
                });
                $('#cd-lateral-nav').removeClass('lateral-menu-is-open');
                //check if transitions are not supported
                if ($('html').hasClass('no-csstransitions')) {
                    $('body').removeClass('overflow-hidden');
                }
            }
        });
        //open (or close) submenu items in the lateral menu. Close all the other open submenu items.
        $('.item-has-children').children('a').on('click', function (event) {
            event.preventDefault();
            $(this).toggleClass('submenu-open').next('.sub-menu').slideToggle(200).end().parent('.item-has-children').siblings('.item-has-children').children('a').removeClass('submenu-open').next('.sub-menu').slideUp(200);
        });
    });
</script>
<%--<nav class="navbar navbar-default" role="navigation" style="background-color: wheat;width: 100%">--%>
<%--    <div class="container-fluid">--%>
<%--        <div class="navbar-header">--%>
<%--            <a class="navbar-brand" href="<%=request.getContextPath()%>/admin/userGoLogin">药店管理系统</a>--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <ul class="nav navbar-nav">--%>
<%--                <li ><a href="<%=request.getContextPath()%>/Drug/select1?page=1">药品管理</a></li>--%>
<%--                <li ><a href="<%=request.getContextPath()%>/Supplier/getAll">供应商管理</a></li>--%>
<%--                <li ><a href="<%=request.getContextPath()%>/User/getAll">用户管理</a></li>--%>
<%--                <li ><a href="<%=request.getContextPath()%>/Order/getAll">订单管理</a></li>--%>
<%--                <li ><a href="<%=request.getContextPath()%>/Type/getAll">类型管理</a></li>--%>
<%--                <li style="padding-left:700px;line-height: 50px"><p style="width: 100px;color: black">管理员：${username}</p></li>--%>
<%--                <li><a style="color: red" href="<%=request.getContextPath()%>/admin/Out">退出</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
