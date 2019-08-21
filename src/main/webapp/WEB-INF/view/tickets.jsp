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
            padding-right: 0px;
            width: 22%;
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
            width: 17.6rem;
            height: 26.0rem;
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

        #region_name {
            padding: 0px;
            font-size: 18px;
        }

        .cinema-info p {
            font-size: 14px;
        }

        .cinema-info h4 {
            font-weight: bold;
        }

        #area_name {
            display: inline-block;
            margin: 3px 10px;
            padding: 10px 15px;
            border: 1px solid orangered;
            color: orangered;
            border-radius: 5%;
        }

        .buy{
            background-color: #f03d37;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row Info-container">
        <div class="col-md-3 image">
            <img src="/cinema/images/${movieTickets.movieImg}" class="Poster"/>
        </div>
        <div class="col-md-9 detail">
            <h2 style="margin-top: 0px;color: yellow">${movieTickets.movieName}</h2><br>
            <span>导演：${movieTickets.movieDirector}</span><br>
            <span>编剧：${movieTickets.movieWriter}</span><br>
            <span>主演：${movieTickets.movieActor}</span><br>
            <span>类型：${movieTickets.movieType}</span><br>
            <span>制片国家/地区：${movieTickets.movieArea}</span><br>
            <span>语言：${movieTickets.movieLang}</span><br>
            <span>上映日期：${movieTickets.movieDate}</span><br>
            <span>片长：${movieTickets.movieTime}</span><br>
        </div>
    </div>
    <div class="row" style="background-color: #CCCCCC;padding-top: 10px ;vertical-align: middle;line-height: 36px;">
        <div class="col-md-2" style="font-size: 18px;text-align: center" id="parentIframe">
            <span style="display: none;" id="region_id">1183</span>
            <span id="region_name">厦门</span>
            <img src="/cinema/images/position.png"/>
        </div>
        <div class="col-md-10">
            <form class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-11" style="margin-top: 3px">
                        <input type="search" id="search" class="form-control" placeholder="找影院"/>
                    </div>
                    <div class="col-md-1">
                        <input type="button" id="cinema_area" class="btn btn-primary" value="筛选"/>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="row" id="area_div" style="display: none">
        <span style="display: none" id="area_id"></span>
        <span id="area_name"></span>
    </div>

    <script>
        $("#area_div").click(function () {
            $("#area_id").text('');
            $("#area_name").text('');
            $(this).css("display", "none");
            regiontest();
        })

        var regiontest = function test() {
            var args = {};
            args.movieId = ${movieTickets.movieId};
            args.cityId = parseInt($("#region_id").text());
            args.chooseDay = new Date().getFullYear() + "-" + $("#chosen").children().text().trim();
            if ($("#area_div").css("display") == "block") {
                args.countyId = $("#area_id").text();
            }
            var data = JSON.stringify(args);

            $.ajax({
                type: "post",
                url: "/cinema/movie/search",
                contentType: "application/json",
                data: data,
                success: function (json) {
                    console.log(json);
                    var str = "";
                    for (var i = 0;i < json.length;i++){
                        str += "<div class='row movie-info' style='border-bottom: 1px solid #9D9D9D;'>" +
                            "<div class='col-md-8 cinema-info'>" +
                            "<h4>" + json[i].cinemaName + "</h4>" +
                            "<p>" + json[i].cinemaAddress + "</p>" +
                            "<p>最近场次:" + json[i].startTime + "</p>" +
                        "</div>" +
                        "<div class='col-md-3' style='text-align: right;margin-top: 25px;'><span style='color: red;font-size: 16px;font-weight: bold;padding: 0px'>￥" + json[i].minPrice + "</span>起" +
                            "</div><div class='col-md-1' style='text-align: left;margin-top: 25px;padding-right: 10px'>" +
                            "<button class='btn buy' onclick='buy(" + json[i].cinemaId + ")'>点击购票</button></div>" +
                            "</div>";

                    }
                    $("#cinema").html(str);
                }
            })
        }
    </script>

    <script>
        $(function () {
            $("#search").keyup(function () {
                var value = $(this).val();
                $(".movie-info").each(function () {
                    $(this).hide();
                    if ($(this).text().indexOf($.trim(value)) >= 0) {
                        $(this).show();
                    }
                });
            });
        });
    </script>

    <script>

        $('#parentIframe').on('click', function () {
            layer.open({
                type: 2,
                title: '选择城市',
                maxmin: true,
                shadeClose: true, //点击遮罩关闭层
                area: ['800px', '520px'],
                content: '/cinema/region/all'
            });
        });

        $('#cinema_area').on('click', function () {
            var parentId = $("#region_id").text();
            layer.open({
                type: 2,
                title: '选择区域',
                maxmin: true,
                shadeClose: true, //点击遮罩关闭层
                area: ['800px', '520px'],
                content: '/cinema/region/county/' + parentId
            });
        });
    </script>


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
            regiontest();
        })
    </script>
    <div id="cinema">
        <c:forEach items="${cmListVos}" var="i">
            <div class="row movie-info" style="border-bottom: 1px solid #9D9D9D;">
                <div class="col-md-8 cinema-info">
                    <h4>${i.cinemaName}</h4>
                    <p>${i.cinemaAddress}</p>
                    <p>最近场次:${i.startTime}</p>
                </div>
                <div class="col-md-3" style="text-align: right;margin-top: 25px;">
                    <span style="color: red;font-size: 16px;font-weight: bold;padding: 0;">￥${i.minPrice} </span>起
                </div>
                <div class="col-md-1" style="text-align: left;margin-top: 25px;padding-right: 10px">
                    <button class="btn buy" onclick="buy(${i.cinemaId})">点击购票</button>
                </div>
            </div>
        </c:forEach>
    </div>
    <script>
       function buy(cinemaId) {
            var moiveId = ${movieTickets.movieId};
            var chooseDay = new Date().getFullYear() + "-" + $("#chosen").children().text().trim();
            window.location.href="/cinema/theatre/buy/" + cinemaId + "?movieId=" + moiveId + "&chooseDay=" + chooseDay;
        }
    </script>
</div>
</div>
</body>
</html>
