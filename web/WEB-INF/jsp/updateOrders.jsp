<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/2
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%--标签库--%>
<html>
<head>
    <title>修改用户</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap.css"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

   <script>

       // function tijiaobiaodan(){
       //     let elementId = "upform";
       //  var dd=   document.getElementById(elementId)
       //     dd.valueOf()
       //     alert(dd)
       // }

       function change() {
           let sheet = $("#role").val();//下拉框
           alert(sheet)
           $("#state").val(sheet);
       }
       /*    $.ajax({
                  url: '${pageContext.request.contextPath}/Order/update',
               data: {
                   "sheet": sheet,
               },
               type: "  ",
               success: function (data) {
                   console.log(sheet);
               }
           })*/


   </script>

</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>

    <br><br>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/Order/update" >
        <div class="form-group">
            <label  class="col-sm-1 control-label">订单号：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="id"  value="${order.id}" readonly="readonly">
            </div>
         </div>
        <div class="form-group">
        <div>
            <label  class="col-sm-1 control-label">买药人：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="userName"  value="${order.userName}" required="required">
            </div>
        </div>
        </div>
            <div class="form-group">
            <label  class="col-sm-1 control-label">药品名称：</label>
            <div class="col-sm-6">
<%--<input type="text" class="form-control"   name="type"  value="${drug.type}" required="required">--%>

              <input type="text"class="hidden" id="state" name="drugName"  value="${order.drugName}" />
                <!--一个普通的下拉框-->
                <select name="role" id="role" onchange="change()">
                    <c:forEach var="drug" items="${drugList}">
                        <option selected="selected" name="drugName" value="${drug.name}">${drug.name}</option>
                    </c:forEach>
                </select>

            </div>
            </div>
         <%--   <div class="form-group">
            <label  class="col-sm-1 control-label">药品类型：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="typeName"  value="${order.typeName}" required="required">
            </div>
            </div>--%>
            <div class="form-group">
            <label  class="col-sm-1 control-label">数量：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="sum"  value="${order.sum}" required="required">
            </div>
            </div>
            <%--<div class="form-group">
            <label  class="col-sm-1 control-label">总金额：</label>
            <div class="col-sm-6 hidden">
                <input type="text" class="form-control"   name="money"  value="${order.money}" readonly="readonly">
            </div>
            </div>--%>
            <div class="form-group">
            <label  class="col-sm-1 control-label">购买时间：</label>
            <div class="col-sm-6">
                <input type="date" class="form-control"  name="date"  value="${order.date}" required="required">
            </div>
            </div>
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button type="submit" class="btn btn-success" <%--onclick="tijiaobiaodan()"--%>>提交修改</button>
            </div>
        </div>
    </form>
</div>



</body>
</html>
