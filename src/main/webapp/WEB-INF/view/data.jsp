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
        #dataSet li {
            display: inline-block;
            width: 20%;
            text-decoration: none;
            float: left;
            text-align: center;
            position: relative;
            font-size: 1.3rem;
            height: 4rem;
            line-height: 4rem;
            background: #f1f4f7;
            color: #666;
            padding: 0 1rem;
            margin: 0;
            font-weight: 400;
            text-transform: uppercase;
            border-right: 1px dotted #E9E7E7;
        }

        p {
            margin-top: 10px;
            height: 18px;
            font-size: 16px;
        }

        p span {
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <input type="text" id="searchBox" class="form-control">
    </div>
    <p><span style="display: none" id="region"></span><span id="location"> 暂无 </span> 选择当前城市</p>
    <div class="row">
        <ul class="list-unstyled" id="dataSet">
            <c:set var="alph" value="65"/>
            <c:set var="count" value="1"/>
            <c:forEach items="${allCity}" varStatus="s" var="i">
                <c:if test="${i.regionPinyin.charAt(0) != alph}">
                    <c:set var="alph" value="${alph + 1}"/>
                    <c:set var="count" value="1"/>
                    <br style="clear: both">
                </c:if>
                <c:if test="${i.regionPinyin.charAt(0) == alph}">
                    <c:if test="${count == 1}">
                        <h4 style="text-align: center">${i.regionPinyin}</h4>
                        <c:set var="count" value="${count + 1}"/>
                    </c:if>

                    <li onclick="choose(this)"><span style="display: none">${i.regionId}</span>${i.regionName}</li>

                </c:if>
            </c:forEach>
        </ul>
    </div>
</div>
<script>
    function choose(th) {
        var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
        var region_id = $(th).children().text();
        var region_name = $(th)[0].innerText;
        $("#region").text(region_id);
        $("#location").text(region_name);
        parent.$("#region_name").text(region_name);
        parent.$("#region_id").text(region_id);
        parent.layer.close(index);
    }
</script>
<script>
    $(function () {
        $("#searchBox").keyup(function () {
            var value = $(this).val();
            $("#dataSet li").each(function () {
                $(this).hide();
                if ($(this).text().indexOf($.trim(value)) >= 0) {
                    $("h4").hide();
                    $("br").hide();
                    $(this).show();
                }
            });
        });

        $("#searchBox").change(function () {
            console.log($(this).val());
            if ($(this).val() == '' || $(this).val() == null) {
                $("h4").show();
                $("br").show();
            }
        })
    });
</script>
</body>
</html>
