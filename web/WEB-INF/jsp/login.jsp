<%-- 在web-inf下的所有资源只能通过contorlle访问
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/1/1
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%--标签库--%>
<html>
<head>
    <title>用户登录界面</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/static/style.css">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.6.1/js/bootstrap.min.js"></script>
</head>


<!--header-->
<!--//header-->
<!--account-->
<%--<div class="account">
    <div class="container">
        <div class="register">
        &lt;%&ndash;    <c:if test="${!empty msg }">
                <div class="alert alert-success">${msg }</div>
            </c:if>
            <c:if test="${!empty failMsg }">
                <div class="alert alert-danger">${failMsg }</div>
            </c:if>&ndash;%&gt;
            <form action="${pageContext.request.contextPath}/admin/Login">
                <div class="register-top-grid">
                    <h3>用户登录</h3>
                    <c:if test="${!empty msg}">
                        <div class="alert alert-success">${msg}</div>
                    </c:if>
                    <div class="input">
                        <span>用户名 <label style="color:red;">*</label></span>
                        <input type="text" name="username" placeholder="请输入用户名" required="required">

                    </div>
                    <div class="input">
                        <span>密码 <label style="color:red;">*</label></span>
                        <input type="text" name="password" placeholder="请输入密码" required="required">
                    </div>

                    <div class="clearfix"> </div>
                </div>
                <div class="register-but text-center">
                    <input type="submit" value="登录">
                    <div class="clearfix"> </div>
                </div>
            </form>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>--%>

<!--//account-->
<!--footer-->
<%--<jsp:include page="footer.jsp"></jsp:include>--%>
<!--//footer-->



<%--第一个--%>
    <%--<style>
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
        <form action="${pageContext.request.contextPath}/admin/Login">
        <div class="form-wrapper">
            <input type="text" name="username" placeholder="username" class="input-item" required="required">
            <input type="password" name="password" placeholder="password" class="input-item" required="required">
        </div>
            <div class="btn">
                <button type="submit">Login</button>
            </div>
        </form>
        <div class="msg">
            Don't have account?
            <a href="/admin/Out">Sign up</a>
        </div>
    </div>
</div>--%>



<%--第二个--%>
    <style>
        body {
            background: url('https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg') no-repeat;
            background-size: 100% 130%;
        }

        #login_box {
            width: 20%;
            height: 400px;
            background-color: #00000060;
            margin: auto;
            margin-top: 10%;
            text-align: center;
            border-radius: 10px;
            padding: 50px 50px;
        }

        h2 {
            color: #ffffff90;
            margin-top: 5%;
        }

        #input-box {
            margin-top: 5%;
        }

        span {
            color: #fff;
        }

        input {
            border: 0;
            width: 60%;
            font-size: 15px;
            color: #fff;
            background: transparent;
            border-bottom: 2px solid #fff;
            padding: 5px 10px;
            outline: none;
            margin-top: 10px;
        }

        button {
            margin-top: 50px;
            width: 60%;
            height: 30px;
            border-radius: 10px;
            border: 0;
            color: #fff;
            text-align: center;
            line-height: 30px;
            font-size: 15px;
            background-image: linear-gradient(to right, #30cfd0, #330867);
        }

        #sign_up {
            margin-top: 45%;
            margin-left: 60%;
        }

        a {
            color: #b94648;
        }
    </style>
</head>

<body>
<div id="login_box">
    <h2>LOGIN</h2>
    <form action="${pageContext.request.contextPath}/admin/userLogin">
    <div id="input_box">
        <input type="text" name="username" placeholder="请输入用户名" required="required">
    </div>
    <div class="input_box">
        <input type="password" name="password" placeholder="请输入密码" required="required">
    </div>
    <button type="submit">登录</button><br>
    </form>
</div>

</body>
</html>
