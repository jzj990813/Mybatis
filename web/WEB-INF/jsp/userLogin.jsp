<%--
  Created by IntelliJ IDEA.
  User: jianzhongjun
  Date: 2022/3/17
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
    }
    html {
        height: 100%;
    }
    body {
        height: 100%;
    }
    .container {
        height: 100%;
        background-image: linear-gradient(to right, #fbc2eb, #a6c1ee);
    }
    .login-wrapper {
        background-color: #fff;
        width: 358px;
        height: 588px;
        border-radius: 15px;
        padding: 0 50px;
        position: relative;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
    }
    .header {
        font-size: 38px;
        font-weight: bold;
        text-align: center;
        line-height: 200px;
    }
    .input-item {
        display: block;
        width: 100%;
        margin-bottom: 20px;
        border: 0;
        padding: 10px;
        border-bottom: 1px solid rgb(128, 125, 125);
        font-size: 15px;
        outline: none;
    }
    .input-item:placeholder {
        text-transform: uppercase;
    }
    .btn {
        text-align: center;
        padding: 10px;
        width: 100%;
        margin-top: 40px;
        background-image: linear-gradient(to right, #a6c1ee, #fbc2eb);
        color: #fff;
    }
    .msg {
        text-align: center;
        line-height: 88px;
    }
    a {
        text-decoration-line: none;
        color: #abc1ee;
    }
</style>
</head>
<body>
<div class="container">
    <div class="login-wrapper">
        <div class="header">Login</div>
        <form action="${pageContext.request.contextPath}/admin/userLogin" method="post">
            <div class="form-wrapper">
                <input type="text" name="username" placeholder="username" class="input-item" required="required">
                <input type="password" name="password" placeholder="password" class="input-item" required="required">
            </div>
            <div class="btn">
                <button type="submit">Login</button>
            </div>
        </form>
      <%--  <div class="msg">
            Don't have account?
            <a href="/admin/Out">Sign up</a>
        </div>--%>
    </div>
</div>

</body>
</html>
