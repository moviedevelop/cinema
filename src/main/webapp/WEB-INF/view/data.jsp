<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/14
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/cinema/css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all"/>
    <script src="/cinema/js/jquery-3.4.1.min.js"></script>
    <script src="/cinema/layui/layui.js"></script>
    <script src="/cinema/layui/layui.all.js"></script>
    <link href="/cinema/layui/css/layui.css" type="text/css" rel="stylesheet"/>
    <style>
        a {
            display: inline-block;
            width: 20%;
            text-decoration: none;
        }

        a li {
            display: inline;
        }
    </style>
</head>
<body>
<div class="container">
    <h4>选择城市</h4>
    <div class="row">
        <input type="text" class="form-control">
    </div>
    <p><span id="location"> 暂无 </span> 选择当前城市</p>

    <%--<tr>
        <td>江西</td>
        <td>福建</td>
        <td>上海</td>
        <td>福建</td>
        <td>上海</td>
    </tr>
    <tr>
        <td>江西</td>
        <td>福建</td>
        <td>上海</td>
        <td>福建</td>
        <td>上海</td>
    </tr>
    <tr>
        <td>江西</td>
        <td>福建</td>
        <td>上海</td>
        <td>福建</td>
        <td>上海</td>
    </tr>--%>
    <div class="row">
        <ul>
            <c:forEach items="${allCity}" varStatus="s" var="i">
                <a data-toggle="${i.regionId}">

                    <li>${i.regionName}</li>
                    <c:if test="${s.count % 5 == 0}"><br></c:if>
                </a>
            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>
