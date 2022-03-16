<%--
  Created by IntelliJ IDEA.
  User: jianzhongjun
  Date: 2022/2/17
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<script>

</script>
<body>
<%--${username}
${drug}+${number}--%>

<table class="table table-bordered table-hover">
    <tr>
        <th>药品名称</th>
        <th>药品总价</th>
        <th>药品数量</th>

    </tr>


        <tr>
            <c:forEach begin="0" end="0" var="drug" items="${drug}" >
            <td >${drug.getName()}</td>
             <td>${drug.getsPrice()*number[0]}</td>
            </c:forEach>
            <c:forEach begin="0" end="0" var="number" items="${number}">
                <td>${number}</td>
            </c:forEach>
        </tr>
    <tr>
        <c:forEach begin="1" end="1" var="drug" items="${drug}" >
            <td class="hidden">${drug.getName()} </td>
        </c:forEach>
        <c:forEach begin="1" end="1" var="number" items="${number}">
            <td>${number}</td>
        </c:forEach>
    </tr>
    <tr>
        <c:forEach begin="2" end="2" var="drug" items="${drug}" >
            <td class="hidden">${drug.getName()} </td>
        </c:forEach>
        <c:forEach begin="2" end="2" var="number" items="${number}">
            <td>${number}</td>
        </c:forEach>
    </tr>
    <tr>
        <c:forEach begin="3" end="3" var="drug" items="${drug}" >
            <td class="hidden">${drug.getName()} </td>
        </c:forEach>
        <c:forEach begin="3" end="3" var="number" items="${number}">
            <td>${number}</td>
        </c:forEach>
    </tr>
    <tr>
        <c:forEach begin="4" end="4" var="drug" items="${drug}" >
            <td class="hidden">${drug.getName()} </td>
            <td>${drug.getsPrice()*number[4]}</td>
        </c:forEach>
        <c:forEach begin="4" end="4" var="number" items="${number}">
            <td>${number}</td>
        </c:forEach>
    </tr>
    <tr>
        <c:forEach begin="5" end="5" var="drug" items="${drug}" >
            <td class="hidden">${drug.getName()} </td>
            <td>${drug.getsPrice()*number[5]}</td>
        </c:forEach>
        <c:forEach begin="5" end="5" var="number" items="${number}">
            <td>${number}</td>
        </c:forEach>
    </tr>


</tr>

</table>
</body>
</html>
