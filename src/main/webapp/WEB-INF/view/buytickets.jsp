<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>tickets</title>
    <link href="/cinema/css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all"/>
    <!-- //bootstrap -->
    <link href="/cinema/css/dashboard.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <link href="/cinema/css/style.css" rel='stylesheet' type='text/css' media="all"/>
    <script src="/cinema/js/jquery-3.4.1.min.js"></script>
    <script src="/cinema/js/jquery-3.4.1.min.js"></script>
    <script src="/cinema/layui/layui.js"></script>
    <script src="/cinema/layui/layui.all.js"></script>
    <%--<link href="/cinema/layui/css/layui.css" type="text/css" rel="stylesheet"/>--%>
    <style>
        body {
            padding-top: 0;
            background: #333237;
        }

        .container {
            height: 100%;
            background: #ffffff;
        }

        .image {
            /*padding-right: 0px;
            width: 22%;*/
        }

        .detail {
            padding-left: 0px;
            color: white;
        }

        .detail span {
            padding: 0px;
            font-size: 16px;
        }

        .Info-container {
            position: relative;
            overflow: hidden;
            padding: 1.5rem;
            background-color: #8B7D6B;
        }

        .Poster {
            position: relative;
            width: 312px;
            height: 211px;
        }

        .show {
            margin-top: 15px;
            border-bottom: 1px solid #9D9D9D;
        }

        ul {
            display: inline;
            padding: 15px;
            margin: 0;
        }

        ul a {
            text-decoration: none;
            color: gray;
            display: inline-block;
            margin-right: 15px;
            margin-bottom: 20px;
            font-size: 15px;
        }

        ul a:hover {
            color: orangered;
            text-decoration: underline;
        }

        ul a li {
            list-style-type: none;
        }

        .cinema-info p {
            font-size: 14px;
        }

        .cinema-info h4 {
            font-weight: bold;
        }

        .cinema-service {
            font-size: 10px !important;
        }

        .table thead th {
            text-align: center;
            font-weight: bold;
            font-size: 16px;
        }

        .table {
            text-align: center;
        }


        .table tbody tr td {
            height: 64px;
            vertical-align: middle;
            font-size: 14px;
        }

        td span {
            padding: 0;
        }

        #end-time {
            font-size: 12px !important;
            font-weight: lighter;
            color: #999999;
        }

        .start-time {
            font-size: 20px !important;
            font-weight: bold;
        }


    </style>
</head>
<body>
<div class="container">
    <div class="row Info-container">
        <div class="col-md-4 image">
            <img src="/cinema/images/cinema_img.jpg" class="Poster"/>
        </div>
        <div class="col-md-8 detail">
            <h2 style="margin-top: 0px;">${cinemaInfo.cinemaName}</h2>
            <span>${cinemaInfo.cinemaAddress}</span><br>
            <span>电话：0592-6375111</span><br><br>
            <span>影院服务 -----------------------------</span><br>
            <span class="cinema-service">儿童优惠：1张影票可免费携带一名1.3米以下的儿童观影（无座）。</span><br>
            <span class="cinema-service">可停车：可免费停车，凭票根至前台领取停车票。</span><br>
        </div>
    </div>

    <div class="row show">
        <ul>
            <c:forEach var="i" items="${movieTimes}" varStatus="s">
                <a class="show-day"
                   <c:if test="${s.count == 1}">id="chosen"
                   style="color: orangered;border: 1px dotted orangered" </c:if> >
                    <li><fmt:formatDate value="${i.showTime}" pattern="MM-dd"/></li>
                </a>
            </c:forEach>
        </ul>
    </div>

    <script>
        $(".show-day").click(function () {
            $(".show-day").each(function () {
                $(this).css("color", "");
                $(this).css("border", "");
                $(this).removeAttr("id", "chosen");
            })
            $(this).css("color", "orangered");
            $(this).css("border", "1px dotted orangered");
            $(this).attr("id", "chosen");
            test();

        })

        var test = function changeDay() {
            var args = {};
            args.chooseDay = new Date().getFullYear() + "-" + $("#chosen").text().trim();
            args.movieId = ${movieCinemaInfos.get(0).movieId};
            args.cinemaId = ${movieCinemaInfos.get(0).cinemaId};
            var data = JSON.stringify(args);
            var str = "";
            $.ajax({
                type:"post",
                url:"/cinema/theatre/change",
                contentType:"application/json",
                data:data,
                success:function (json) {
                    for (var i = 0;i < json.length;i++) {
                        str += "<tr><td><span class='start-time'>" + json[i].startTime + "</span><br><span class=\"end-time\"></span></td>\n" +
                    "                <td>" + json[i].movieLang + "</td>\n" +
                    "                <td>" + json[i].roomName + "</td>\n" +
                    "                <td>" + json[i].price + "</td>\n" +
                    "                <td><a href='/cinema/theatre/seat/" + json[i].listId + "'>选座购票</a></td></tr>"
                    }
                    $("#body").html(str);
                    addMovieTime();
                }
            })
        }
    </script>
    <table class="table">
        <thead>
        <tr>
            <th>放映时间</th>
            <th>语言版本</th>
            <th>放映厅</th>
            <th>售价（元）</th>
            <th>选座购票</th>
        </tr>
        </thead>
        <tbody id="body">
        <c:forEach items="${movieCinemaInfos}" var="i">
            <tr>
                <td><span class="start-time">${i.startTime}</span><br><span class="end-time"></span></td>
                <td>${i.movieLang}</td>
                <td>${i.roomName}</td>
                <td>${i.price}</td>
                <td><a href="/cinema/theatre/seat/${i.listId}">选座购票</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <script>
        function appendZero(obj) {
            if (obj < 10) return "0" + obj; else return obj;
        }

        function addMovieTime() {
            var timeLong = "${movieCinemaInfos.get(0).movieTime}";
            var reg = /[\u4e00-\u9fa5]+/;
            var long = parseInt(timeLong.replace(reg, ""));
            $(".start-time").each(function () {
                var time = $(this).text();
                var date = new Date(new Date().getFullYear() + "-" + $("#chosen").text().trim() + " " + time);
                date.setMinutes(date.getMinutes() + long);
                $(this).parent().children(".end-time").text(appendZero(date.getHours()) + ":" + appendZero(date.getMinutes()) + "散场");
            })
        }

        $(document).ready(addMovieTime())
    </script>
</div>
</div>
</body>
</html>
