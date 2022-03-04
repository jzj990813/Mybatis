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
       function change() {
           let sheet = $("#role").val();//下拉框
           alert(sheet)
           $("#state").val(sheet);
       }
   </script>
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>

    <br><br>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/Drug/update">
        <div class="form-group">
            <label  class="col-sm-1 control-label">药品ID：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="id"  value="${drug.id}" readonly="readonly">
            </div>
         </div>
        <div class="form-group">
        <div>
            <label  class="col-sm-1 control-label">药品名称：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="name"  value="${drug.name}" required="required">
            </div>
        </div>
        </div>
            <div class="form-group">
            <label  class="col-sm-1 control-label">药品类型：</label>
            <div class="col-sm-6">
<%--<input type="text" class="form-control"   name="type"  value="${drug.type}" required="required">--%>

            <input type="text" class="hidden" id="state" name="type"  value="${drug.type}"/>
            <!--一个普通的下拉框-->
            <select name="role" id="role" onchange="change()">
                <c:forEach var="types" items="${typeList}">
                    <option selected="selected" name="type" value="${types.name}">${types.name}</option>
                </c:forEach>
            </select>

            </div>
            </div>
            <div class="form-group">
            <label  class="col-sm-1 control-label">有效日期：</label>
            <div class="col-sm-6">
                <input type="date" class="form-control"   name="date"  value="${drug.date}" required="required">
            </div>
            </div>
            <div class="form-group">
            <label  class="col-sm-1 control-label">库存数量：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="stock"  value="${drug.stock}" required="required">
            </div>
            </div>
            <div class="form-group">
            <label  class="col-sm-1 control-label">采购价格：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="pPrice"  value="${drug.pPrice}" required="required">
            </div>
            </div>
            <div class="form-group">
            <label  class="col-sm-1 control-label">销售价格：}</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="sPrice"  value="${drug.sPrice}" required="required">
            </div>
            </div>
            <div class="form-group">
            <label  class="col-sm-1 control-label">生产地址：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="address"  value="${drug.address}" required="required">
            </div>
              </div>
              <div class="form-group">
            <label  class="col-sm-1 control-label">药品描述：</label>
            <div class="col-sm-6">
                <input type="text" class="form-control"   name="description"  value="${drug.description}" required="required">
            </div>
             </div>

       <%-- <div class="form-group">
            <label for="select_topic" class="col-sm-1 control-label">类目</label>
            <div class="col-sm-6">
                <select class="form-control" id="select_topic" name="typeid">
                    <c:forEach items="${typeList }" var="t">
                        <option <c:if test="${t.id==g.type.id }">selected="selected"</c:if> value="${t.id }">${t.name }</option>
                    </c:forEach>

                </select>
            </div>
        </div>--%>
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button type="submit" class="btn btn-success">提交修改</button>
            </div>
        </div>
    </form>
</div>



</body>
</html>
