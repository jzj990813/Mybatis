<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/2
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%--标签库--%>
<%--美化页面bootstra--%>
<link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<html>

<head>
    <title>Title</title>
    <script type="text/javascript">
        var m = "";
        function menu(num){
            sub = eval("sub_"+num+".style");
            if(m !== sub){
                if(m !== ""){
                    m.display = "none";
                }
                sub.display='block';
                m = sub;
            }else{
                sub.display = "none";
                m = "";
            }
        }
    </script>
    <style type="text/css">
        <!--
        .m1 {
            font-size: 12px;
            font-weight: bold;
            margin-left: 60px;
            text-align: center;
            vertical-align: sub;
        }
        .sub1 {
            margin-left: 40px;
        }

        -->
    </style>
</head>
<body>
<table border="0" width="200" height="100%" align="left" cellSpacing="0" cellPadding="0" bgcolor="#66CCFF"  >
    <!-- 药品管理 -->
    <tr>
        <td onClick="menu(0)" height="33" >
            <font class="m1">医药管理</font>
        </td>
    </tr>
    <tr bgcolor="#E0FBC4">
        <td id="sub_0" style="display: none;">
            <table width="80%" align="center">
                <tr>
                    <td  id="s1" height="22"  onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/Drug/toInsert" class="sub1">添加药品</a>
                    </td>
                </tr>
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/Drug/getAll"  class="sub1">查看药品							</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <!-- 类别管理 -->
    <tr>
        <td onClick="menu(1)" height="33" ">
            <font class="m1">
                类别管理
            </font>
        </td>
    </tr>
    <tr bgcolor="#E0FBC4">
        <td id="sub_1" style="display: none">
            <table width="80%" align="center">
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/jsp/baseData/category_add.jsp" target="main" class="sub1">添加类别</a>
                    </td>
                </tr>
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/cate/findCategory" target="main" class="sub1">查看类别</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <!-- 购买药品 -->
    <tr>
        <td onClick="menu(2)" height="33" ">
            <font class="m1">
                购买药品
            </font>
        </td>
    </tr>
    <tr bgcolor="#E0FBC4">
        <td id="sub_2" style="display: none">
            <table width="80%" align="center">
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/med/findMed?resPage=baseData/med_sell" target="main" class="sub1">选购药品</a>
                    </td>
                </tr>
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/sell/findSellList?queryPage=sell_order" target="main" class="sub1">已购药品</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <!-- 销售管理 -->
    <tr>
        <td onClick="menu(3)" height="33" >
            <font class="m1">
                销售管理
            </font>
        </td>
    </tr>
    <tr bgcolor="#E0FBC4">
        <td id="sub_3" style="display: none">
            <table width="80%" align="center">
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/sell/findSellList?queryPage=sell_list" target="main" class="sub1">查看明细</a>
                    </td>
                </tr>
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/jsp/sell/sell_query.jsp" target="main" class="sub1">日期查询</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>


    <!-- 进货 -->
    <tr>
        <td onClick="menu(4)" height="33" >
            <font class="m1">
                进货管理
            </font>
        </td>
    </tr>
    <tr bgcolor="#E0FBC4">
        <td id="sub_4" style="display: none">
            <table width="80%" align="center">
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/jsp/require/req_add.jsp" target="main" class="sub1">添加进货</a>
                    </td>
                </tr>
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/req/findAllReq" target="main" class="sub1">查看进货</a>
                    </td>
                </tr>
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/toRequireCate" target="main" class="sub1">添加需求</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <!-- 系统管理 -->
    <tr>
        <td onClick="menu(5)" height="33" >
            <font class="m1">
                系统管理
            </font>
        </td>
    </tr>
    <tr bgcolor="#E0FBC4">
        <td id="sub_5" style="display: none">
            <table width="80%" align="center">
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/User/toInsert"  class="sub1">添加管理员</a>
                    </td>
                </tr>
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/User/getAll"  class="sub1">查看所有管理员</a>
                    </td>
                </tr>
                <tr>
                    <td height="22" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''">
                        <a href="${pageContext.request.contextPath}/admin/Out" target="_top" class="sub1">退出系统</a>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="100%"></td>
    </tr>
</table>
</body>
</html>
