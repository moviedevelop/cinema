<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style>
        body{
            padding-top: 0;
            background: #333237;
        }
        .container{
            height: 100%;
            background: #ffffff;
        }
        .image{
            padding-right: 0px;
            width: 22%;
        }

        .detail{
            padding-left: 0px;
        }

        .detail span{
            padding: 0px;
            font-size: 16px;
        }
        .Info-container {
            position: relative;
            overflow: hidden;
            padding: 1.5rem;
            background-color: #87CEFF;
        }
        .Poster{
            position: relative;
            z-index: 1;
            width: 17.6rem;
            height: 26.0rem;
        }
        .show{
            margin-top: 15px;
            border-bottom: 1px solid #9D9D9D;
        }
        ul{
            display: inline;
            padding: 15px;
            margin: 0;
        }
        ul a{
            text-decoration: none;
            color: gray;
            display: inline-block;
            margin-right: 15px;
            margin-bottom: 20px;
            font-size: 15px;
        }
        ul a:hover{
            color: orangered;
            text-decoration: underline;
        }
        ul a li{
            list-style-type: none;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="row Info-container">
        <div class="col-md-3 image">
            <img src="/cinema/images/p1524359776.jpg" class="Poster"/>
        </div>
        <div class="col-md-9 detail" >
            <h2 style="margin-top: 0px">魔童降世</h2>
            <span>导演：</span><br>
            <span>编剧：</span><br>
            <span>主演：</span><br>
            <span>类型：</span><br>
            <span>制片国家/地区：</span><br>
            <span>语言：</span><br>
            <span>上映日期：</span><br>
            <span>片长：</span><br>
            <span>集数：</span><br>
        </div>
    </div>
    <div class="row" style="background-color: #CCCCCC;padding-top: 10px ;vertical-align: middle;line-height: 36px;">
        <div class="col-md-1" style="font-size: 18px;text-align: center">厦门 <img src="/cinema/images/position.png" /></div>
        <div class="col-md-11">
            <form class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-11" style="margin-top: 3px">
                        <input type="search" class="form-control" placeholder="找影院" />
                    </div>
                    <div class="col-md-1" >
                        <input type="submit" class="btn btn-primary" value="筛选" />
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="row show">
        <ul>
            <a>
                <li>今天08-13</li>
            </a>
            <a>
                <li>今天08-13</li>
            </a>
            <a>
                <li>今天08-13</li>
            </a>
        </ul>
    </div>

    <div class="row" style="border-bottom: 1px solid #9D9D9D;">
        <div class="col-md-10">
            <h3>星美影视商城</h3>
            <p>moumoumou</p>
            <p>nncjdnj</p>
        </div>
        <div class="col-md-2" style="text-align: right;margin-top: 18px;"><span style="color: red;">25元</span>起</div>
    </div>
    <div class="row" style="border-bottom: 1px solid #9D9D9D;">
        <div class="col-md-10">
            <h3>大头斌影视商城</h3>
            <p>moumoumou</p>
            <p>nncjdnj</p>
        </div>
        <div class="col-md-2" style="text-align: right;margin-top: 20px;"><span style="color: red;">25元</span>起</div>
    </div>
    <div class="row" style="border-bottom: 1px solid #9D9D9D;">
        <div class="col-md-10">
            <h3>星美影视商城</h3>
            <p>moumoumou</p>
            <p>nncjdnj</p>
        </div>
        <div class="col-md-2" style="text-align: right;margin-top: 18px;"><span style="color: red;">25元</span>起</div>
    </div>
    <div class="row" style="border-bottom: 1px solid #9D9D9D;">
        <div class="col-md-10">
            <h3>星美影视商城</h3>
            <p>moumoumou</p>
            <p>nncjdnj</p>
        </div>
        <div class="col-md-2" style="text-align: right;margin-top: 18px;"><span style="color: red;">25元</span>起</div>
    </div>
    <div class="row" style="border-bottom: 1px solid #9D9D9D;">
        <div class="col-md-10">
            <h3>星美影视商城</h3>
            <p>moumoumou</p>
            <p>nncjdnj</p>
        </div>
        <div class="col-md-2" style="text-align: right;margin-top: 18px;"><span style="color: red;">25元</span>起</div>
    </div>
    <div class="row" style="border-bottom: 1px solid #9D9D9D;">
        <div class="col-md-10">
            <h3>星美影视商城</h3>
            <p>moumoumou</p>
            <p>nncjdnj</p>
        </div>
        <div class="col-md-2" style="text-align: right;margin-top: 18px;"><span style="color: red;">25元</span>起</div>
    </div>
    <div class="row" style="border-bottom: 1px solid #9D9D9D;">
        <div class="col-md-10">
            <h3>星美影视商城</h3>
            <p>moumoumou</p>
            <p>nncjdnj</p>
        </div>
        <div class="col-md-2" style="text-align: right;margin-top: 18px;"><span style="color: red;">25元</span>起</div>
    </div>

</div>
</div>
</body>
</html>
