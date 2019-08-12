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

</head>
<body>
<%@ include file="topnav.jsp"%>
<%@ include file="leftside.jsp" %>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="main-grids">
        <div class="top-grids">
            <div class="recommended-info">
                <h3>正在热映</h3>
            </div>
            <c:forEach items="${recentMovies}" var="i">
                <div class="col-md-2 resent-grid recommended-grid slider-top-grids">
                    <div class="resent-grid-img recommended-grid-img">
                        <a href="/cinema/single.jsp"><img src="images/${i.movieImg}" alt=""/></a>
                        <div class="time">
                            <p>${i.movieTime}</p>
                        </div>
                        <div class="clck">
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="resent-grid-info recommended-grid-info">
                        <h3><a href="/cinema/single.jsp" class="title title-info">${i.movieName}</a></h3>
                        <ul>
                            <li><p class="author author-info"><a href="#" class="author">${i.movieArea}</a></p></li>
                            <li class="right-list"><p class="views views-info">${i.movieLang}</p></li>
                        </ul>
                    </div>
                </div>
            </c:forEach>
            <div class="clearfix"></div>
        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>评分最高（电影）</h3>
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
                    <ul class="rslides" id="slider3">
                        <li>
                            <div class="animated-grids">
                                <c:forEach items="${highMarkMovies}" var="i" varStatus="s">
                                    <c:if test="${s.count <= 6}">
                                        <div class="col-md-2 resent-grid recommended-grid slider-top-grids">
                                            <div class="resent-grid-img recommended-grid-img">
                                                <a href="/cinema/single.jsp"><img src="images/${i.movieImg}" alt=""/></a>
                                                <div class="time small-time slider-time">
                                                    <p>${i.movieTime}</p>
                                                </div>
                                                <div class="clck small-clck">
                                                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                                </div>
                                            </div>
                                            <div class="resent-grid-info recommended-grid-info">
                                                <h5><a href="/cinema/single.jsp"
                                                       class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
                                                <div class="slid-bottom-grids">
                                                    <div class="slid-bottom-grid">
                                                        <p class="author author-info"><a href="#" class="author">${i.movieArea}</a></p>
                                                    </div>
                                                    <div class="slid-bottom-grid slid-bottom-right">
                                                        <p class="views views-info">${i.movieLang}</p>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <c:forEach items="${highMarkMovies}" var="i" varStatus="s">
                                    <c:if test="${s.count > 6}">
                                        <div class="col-md-2 resent-grid recommended-grid slider-top-grids">
                                            <div class="resent-grid-img recommended-grid-img">
                                                <a href="/cinema/single.jsp"><img src="images/${i.movieImg}"
                                                                                  alt=""/></a>
                                                <div class="time small-time slider-time">
                                                    <p>${i.movieTime}</p>
                                                </div>
                                                <div class="clck small-clck">
                                                    <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                                                </div>
                                            </div>
                                            <div class="resent-grid-info recommended-grid-info">
                                                <h5><a href="/cinema/single.jsp"
                                                       class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
                                                <div class="slid-bottom-grids">
                                                    <div class="slid-bottom-grid">
                                                        <p class="author author-info"><a href="#"
                                                                                         class="author">${i.movieArea}</a>
                                                        </p>
                                                    </div>
                                                    <div class="slid-bottom-grid slid-bottom-right">
                                                        <p class="views views-info">${i.movieLang}</p>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>

                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>电视剧</h3>
                </div>
                <c:forEach items="${telePlays}" var="i" varStatus="s">

                    <div class="col-md-2 resent-grid recommended-grid slider-top-grids">
                        <div class="resent-grid-img recommended-grid-img">
                            <a href="/cinema/single.jsp"><img src="/cinema/images/${i.movieImg}" alt=""/></a>
                            <div class="time small-time slider-time">
                                <p>${i.movieTime}</p>
                            </div>
                            <div class="clck small-clck">
                                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                            </div>
                        </div>
                        <div class="resent-grid-info recommended-grid-info">
                            <h5><a href="/cinema/single.jsp" class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
                            <div class="slid-bottom-grids">
                                <div class="slid-bottom-grid">
                                    <p class="author author-info"><a href="#" class="author">${i.movieArea}</a></p>
                                </div>
                                <div class="slid-bottom-grid slid-bottom-right">
                                    <p class="views views-info">${i.movieLang}</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                </c:forEach>

                <div class="clearfix"></div>
            </div>

        </div>
        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>动漫</h3>
                </div>
                <c:forEach items="${comicMocies}" var="i" varStatus="s">

                    <div class="col-md-2 resent-grid recommended-grid slider-top-grids">
                        <div class="resent-grid-img recommended-grid-img">
                            <a href="/cinema/single.jsp"><img src="images/${i.movieImg}" alt=""/></a>
                            <div class="time small-time slider-time">
                                <p>${i.movieTime}</p>
                            </div>
                            <div class="clck small-clck">
                                <span class="glyphicon glyphicon-time" aria-hidden="true"></span>
                            </div>
                        </div>
                        <div class="resent-grid-info recommended-grid-info">
                            <h5><a href="/cinema/single.jsp" class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
                            <div class="slid-bottom-grids">
                                <div class="slid-bottom-grid">
                                    <p class="author author-info"><a href="#" class="author">${i.movieArea}</a></p>
                                </div>
                                <div class="slid-bottom-grid slid-bottom-right">
                                    <p class="views views-info">${i.movieLang}</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                </c:forEach>
                <div class="clearfix"></div>
            </div>
            <div class="recommended-grids">

                <div class="clearfix"></div>
            </div>
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