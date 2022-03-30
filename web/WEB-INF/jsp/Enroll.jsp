<%--
  Created by IntelliJ IDEA.
  User: jianzhongjun
  Date: 2022/3/17
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap1.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/style.css">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="text-center"><h1>注册用户</h1></div>
<br>
<form class="form-horizontal" action="<%=request.getContextPath()%>/User/Enroll" method="post" >
    <div class="form-group">
        <label  class="col-sm-1 control-label">用户姓名</label>
        <div class="col-sm-6">
            <input type="text" class="form-control"  name="name"  required="required">
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-1 control-label">用户密码</label>
        <div class="col-sm-6">
            <input type="password" class="form-control"  name="psd" required="required" >
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-1 control-label">确认密码</label>
        <div class="col-sm-6">
            <input type="password" class="form-control"  name="password" required="required" >
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-1 control-label">用户性别</label>
        <div class="col-sm-6">
            <input type="text" class="form-control"  name="sex" required="required" >
          <%--  <select>
                <option>男</option>
                <option>女</option>
            </select>--%>
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-1 control-label">用户年龄</label>
        <div class="col-sm-6">
            <input type="text" class="form-control"  name="age" required="required" >
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-1 control-label">用户地址</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="address" required="required" >
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-1 control-label">用户电话</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="phone" required="required" >
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-1 col-sm-10">
            <button type="submit" class="btn btn-success">提交</button>
        </div>
    </div>
</form>
</body>
</html>
