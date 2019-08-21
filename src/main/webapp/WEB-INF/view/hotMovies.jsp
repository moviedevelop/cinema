<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- bootstrap -->
    <link href="/cinema/css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all"/>
    <!-- //bootstrap -->
    <link href="/cinema/css/dashboard.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <link href="/cinema/css/style.css" rel='stylesheet' type='text/css' media="all"/>
    <script src="/cinema/js/jquery-3.4.1.min.js"></script>
    <!--start-smoth-scrolling-->
<style>
    .tags-panel {
        border: 1px solid #e5e5e5;
        padding: 0 8px;
        margin-top: 0px;
    }
    .tags-line-border{
        border-bottom: 1px solid #e5e5e5;
    }
    .tags-panel li, .tags-panel ul {
        margin: 0;
        padding: 0;
        list-style-type: none;
    }
    .tags-panel ul {
        display: block;
        list-style-type: disc;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        padding-inline-start: 40px;
    }
    .tags-panel li {
        display: list-item;
        text-align: -webkit-match-parent;
    }
    .tags-line {
        padding: 25px 0!important;
    }
    .tags-lines {
        padding-left: 5px!important;
    }
    .tags-panel ul ul {
        display: block;
        list-style-type: circle;
        margin-block-start: 0px;
        margin-block-end: 0px;
    }
    .tags-title{
        height: 35px;
        line-height: 26px;
        float: left;
        color: #999;
        font-size: 20px;
        margin-right: 10px;
    }
    .tags li a {
        color: #333;
        font-size: 16px;
    }
    .tags li a:hover{
        color:red;
    }
    .tags li{
        display:inline-block;
        margin-right: 8px;
        border-radius: 14px;
        padding: 3px 9px;
    }
    .tags li.active {
        background: #f34d41;
        color: #fff;
    }
</style>
</head>
<body>
<%@ include file="topnav.jsp"%>
<div class="col-sm-3 col-md-2 sidebar">
    <div class="top-navigation">
        <div class="t-menu">MENU</div>
        <div class="t-img">
            <img src="/cinema/images/lines.png" alt=""/>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="drop-navigation drop-navigation">
        <ul class="nav nav-sidebar">
            <li><a href="/cinema/index" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
            <li><a href="/cinema/TVshow" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>电视剧</a></li>
            <li><a href="/cinema/history.jsp" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>历史</a></li>
            <li class="active"><a href="#" class="menu1"><span class="glyphicon glyphicon-film" ></span>电影<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-2">
                <li  class="active"><a href="/cinema/movie/hotMovies" style="margin-left: 46px">正在热映</a></li>
                <li><a href="/cinema/movies.jsp" style="margin-left: 46px">评分最高</a></li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $("li a.menu1").click(function () {
                    $("ul.cl-effect-2").slideToggle(300, function () {
                        // Animation complete.
                    });
                });
            </script>
            <%--<li><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king" aria-hidden="true"></span>动漫<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-1">
                <li><a href="/cinema/sports.jsp">Football</a></li>
                <li><a href="/cinema/sports.jsp">Cricket</a></li>
                <li><a href="/cinema/sports.jsp">Tennis</a></li>
                <li><a href="/cinema/sports.jsp">Shattil</a></li>
            </ul>--%>
            <!-- script-for-menu -->
            <%--<script>
                $("li a.menu").click(function () {
                    $("ul.cl-effect-1").slideToggle(300, function () {
                        // Animation complete.
                    });
                });
            </script>--%>
            <li><a href="/cinema/comics" class="song-icon"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>动漫</a></li>
            <li><a href="/cinema/user/showdata" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>用户中心</a></li>
        </ul>
        <!-- script-for-menu -->
        <script>
            $(".top-navigation").click(function () {
                $(".drop-navigation").slideToggle(300, function () {
                    // Animation complete.
                });
            });
        </script>
        <div class="side-bottom" style="text-align: center;color: #21DEEF;font-size: 14px;margin: 64px">
            developer：肖超 / 吴思谕
        </div>
    </div>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="main-grids">
        <div class="top-grids">
            <div class="tags-panel">
                <ul class="tags-lines">
                    <li class="tags-line tags-line-border">
                        <div class="tags-title">类型 :</div>
                        <ul class="tags">
                            <li class="active">
                                <a href="" style="cursor: default">全部</a>
                            </li>
                            <li>
                                <a href="">爱情</a>
                            </li>
                            <li>
                                <a href="">喜剧</a>
                            </li>
                            <li>
                                <a href="">剧情</a>
                            </li>
                            <li>
                                <a href="">动画</a>
                            </li>
                            <li>
                                <a href="">奇幻</a>
                            </li>
                            <li>
                                <a href="">动作</a>
                            </li>
                            <li>
                                <a href="">犯罪</a>
                            </li>
                            <li>
                                <a href="">冒险</a>
                            </li>
                            <li>
                                <a href="">恐怖</a>
                            </li>
                            <li>
                                <a href="">惊悚</a>
                            </li>
                            <li>
                                <a href="">科幻</a>
                            </li>
                            <li>
                                <a href="">灾难</a>
                            </li>
                            <li>
                                <a href="">科幻</a>
                            </li>
                        </ul>
                    </li>
                    <li class="tags-line tags-line-border">
                        <div class="tags-title">区域 :</div>
                        <ul class="tags">
                            <li class="active">
                                <a href="" style="cursor: default">全部</a>
                            </li>
                            <li>
                                <a href="">中国大陆</a>
                            </li>
                            <li>
                                <a href="">美国</a>
                            </li>
                            <li>
                                <a href="">韩国</a>
                            </li>
                            <li>
                                <a href="">日本</a>
                            </li>
                            <li>
                                <a href="">中国香港</a>
                            </li>
                            <li>
                                <a href="">中国台湾</a>
                            </li>
                            <li>
                                <a href="">泰国</a>
                            </li>
                            <li>
                                <a href="">法国</a>
                            </li>
                            <li>
                                <a href="">俄罗斯</a>
                            </li>
                            <li>
                                <a href="">意大利</a>
                            </li>
                            <li>
                                <a href="">西班牙</a>
                            </li>
                            <li>
                                <a href="">德国</a>
                            </li>
                        </ul>
                    </li>
                    <li class="tags-line">
                        <div class="tags-title">主演 :</div>
                        <ul class="tags">
                            <li class="active">
                                <a href="" style="cursor: default">全部</a>
                            </li>
                            <li>
                                <a href="">汤姆·赫兰德</a>
                            </li>
                            <li>
                                <a href="">邓超</a>
                            </li>
                            <li>
                                <a href="">黄晓明</a>
                            </li>
                            <li>
                                <a href="">张家辉</a>
                            </li>
                            <li>
                                <a href="">任贤齐</a>
                            </li>
                            <li>
                                <a href="">古天乐</a>
                            </li>
                            <li>
                                <a href="">杨紫</a>
                            </li>
                            <li>
                                <a href="">吴镇宇</a>
                            </li>
                            <li>
                                <a href="">小罗伯特·唐尼</a>
                            </li>
                            <li>
                                <a href="">谭卓</a>
                            </li>
                            <li>
                                <a href="">吕艳婷</a>
                            </li>
                            <li>
                                <a href="">任素汐</a>
                            </li>
                            <li>
                                <a href="">囧森瑟夫</a>
                            </li>
                            <li>
                                <a href="">唐纳德·格洛弗</a>
                            </li>
                            <li>
                                <a href="">杜江</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>正在热映</h3>
                </div>
                <script src="/cinema/js/responsiveslides.min.js"></script>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider3").responsiveSlides({
                            auto: true,
                            pager: false,
                            nav: true,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });

                    });
                </script>
                <div id="top" class="callbacks_container">
                    <%--<ul class="rslides" id="slider3">--%>
                        <%--<li>--%>
                            <div class="animated-grids">
                                <c:forEach items="${hotMovies}" var="i" varStatus="s">
                                    <c:if test="${s.count <= 6}">
                                        <div class="col-md-2 resent-grid recommended-grid slider-top-grids">
                                            <div class="resent-grid-img recommended-grid-img">
                                                <a href="/cinema/movie/detail/${i.movieId}"><img src="/cinema/images/${i.movieImg}" alt=""/></a>
                                                <div class="time">
                                                    <p>${i.movieTime}</p>
                                                </div>
                                                <div class="clck">
                                                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                                </div>
                                            </div>
                                            <div class="resent-grid-info recommended-grid-info">
                                                <h3><a href="/cinema/movie/detail/${i.movieId}" class="title title-info">${i.movieName}</a></h3>
                                                <ul>
                                                    <li><p class="author author-info"><a href="#" class="author">${i.movieArea}</a></p></li>
                                                    <li class="right-list"><p class="views views-info">${i.movieLang}</p></li>
                                                </ul>
                                            </div>

                                            <div class="heading-right" style="margin-left: 21%;padding-top: 15px">
                                                <a href="/cinema/movie/tickets/${i.movieId}">点  击  选  座  购  票 </a>
                                            </div>

                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<div class="animated-grids">--%>
                                <%--<c:forEach items="${hotMovies}" var="i" varStatus="s">--%>
                                    <%--<c:if test="${s.count > 6}">--%>
                                        <%--<div class="col-md-2 resent-grid recommended-grid slider-top-grids">--%>
                                            <%--<div class="resent-grid-img recommended-grid-img">--%>
                                                <%--<a href="/cinema/movie/detail/${i.movieId}"><img src="/cinema/images/${i.movieImg}" alt=""/></a>--%>
                                                <%--<div class="time">--%>
                                                    <%--<p>${i.movieTime}</p>--%>
                                                <%--</div>--%>
                                                <%--<div class="clck">--%>
                                                    <%--<span class="glyphicon glyphicon-time" aria-hidden="true"></span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div class="resent-grid-info recommended-grid-info">--%>
                                                <%--<h3><a href="/cinema/movie/detail/${i.movieId}" class="title title-info">${i.movieName}</a></h3>--%>
                                                <%--<ul>--%>
                                                    <%--<li><p class="author author-info"><a href="#" class="author">${i.movieArea}</a></p></li>--%>
                                                    <%--<li class="right-list"><p class="views views-info">${i.movieLang}</p></li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>

                                            <%--<div class="heading-right" style="margin-left: 21%;padding-top: 15px">--%>
                                                <%--<a href="/cinema/movie/tickets/${i.movieId}">点  击  选  座  购  票 </a>--%>
                                            <%--</div>--%>

                                        <%--</div>--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>
                            <%--</div>--%>
                        <%--</li>--%>

                    <%--</ul>--%>
                </div>
            </div>
        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3 style="color: white">.</h3>
                </div>
                <c:forEach items="${hotMovies}" var="i" varStatus="s">
                    <c:if test="${s.count > 6}">
                        <div class="col-md-2 resent-grid recommended-grid slider-top-grids">
                            <div class="resent-grid-img recommended-grid-img">
                                <a href="/cinema/movie/detail/${i.movieId}"><img src="/cinema/images/${i.movieImg}" alt=""/></a>
                                <div class="time">
                                    <p>${i.movieTime}</p>
                                </div>
                                <div class="clck">
                                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                </div>
                            </div>
                            <div class="resent-grid-info recommended-grid-info">
                                <h3><a href="/cinema/movie/detail/${i.movieId}" class="title title-info">${i.movieName}</a></h3>
                                <ul>
                                    <li><p class="author author-info"><a href="#" class="author">${i.movieArea}</a></p></li>
                                    <li class="right-list"><p class="views views-info">${i.movieLang}</p></li>
                                </ul>
                            </div>

                            <div class="heading-right" style="margin-left: 21%;padding-top: 15px">
                                <a href="/cinema/movie/tickets/${i.movieId}">点  击  选  座  购  票 </a>
                            </div>

                        </div>
                    </c:if>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <c:forEach items="${hotMovies}" var="i" varStatus="s">
                    <c:if test="${s.count > 6}">
                        <div class="col-md-2 resent-grid recommended-grid slider-top-grids">
                            <div class="resent-grid-img recommended-grid-img">
                                <a href="/cinema/movie/detail/${i.movieId}"><img src="/cinema/images/${i.movieImg}" alt=""/></a>
                                <div class="time">
                                    <p>${i.movieTime}</p>
                                </div>
                                <div class="clck">
                                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                </div>
                            </div>
                            <div class="resent-grid-info recommended-grid-info">
                                <h3><a href="/cinema/movie/detail/${i.movieId}" class="title title-info">${i.movieName}</a></h3>
                                <ul>
                                    <li><p class="author author-info"><a href="#" class="author">${i.movieArea}</a></p></li>
                                    <li class="right-list"><p class="views views-info">${i.movieLang}</p></li>
                                </ul>
                            </div>

                            <div class="heading-right" style="margin-left: 21%;padding-top: 15px">
                                <a href="/cinema/movie/tickets/${i.movieId}">点  击  选  座  购  票 </a>
                            </div>

                        </div>
                    </c:if>
                </c:forEach>
                <div class="clearfix"></div>
            </div>
    </div>
    <!-- footer -->
    <%@ include file="footer.jsp"%>
    <%--<div class="footer" style="text-align: center">
        <div class="footer-grids">
            <div class="footer-top">
                <div class="footer-top-nav">
                    <ul>
                        <li><a href="/cinema/about.jsp">About</a></li>
                        <li><a href="/cinema/press.jsp">Press</a></li>
                        <li><a href="/cinema/copyright.jsp">Copyright</a></li>
                        <li><a href="/cinema/creators.jsp">Creators</a></li>
                        <li><a href="/cinema/developers.jsp">Developers</a></li>
                        <li><a href="/cinema/try.jsp">Try something new!</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="copyright" style="margin-top: 20px">
            <p>Copyright &copy; 2015.Company name All rights reserved.</p>
        </div>
    </div>--%>
</div>
<!-- //footer -->
</div>
<div class="clearfix"></div>
<div class="drop-menu">
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Regular link</a></li>
        <li role="presentation" class="disabled"><a role="menuitem" tabindex="-1" href="#">Disabled link</a></li>
        <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another link</a></li>
    </ul>
</div>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/cinema/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>