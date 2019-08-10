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

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><h1><img src="/cinema/images/logo.png" alt=""/></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="top-search">
                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control" placeholder="Search...">
                    <input type="submit" value=" ">
                </form>
            </div>
            <div class="header-top-right">
                <div class="file">
                    <a href="/cinema/upload.jsp">Upload</a>
                </div>
                <div class="signin">
                    <a href="#small-dialog3" style="<c:if test="${sessionScope.userId != null}">display: none;</c:if>"
                       class="play-icon popup-with-zoom-anim">注 册</a>
                    <!-- pop-up-box -->
                    <script type="text/javascript" src="/cinema/js/modernizr.custom.min.js"></script>
                    <link href="/cinema/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                    <script src="/cinema/js/jquery.magnific-popup.js" type="text/javascript"></script>
                    <!--//pop-up-box -->

                    <div id="small-dialog3" class="mfp-hide">
                        <h3>Create Account</h3>
                        <div class="social-sits">
                            <div class="facebook-button">
                                <a href="#">Connect with Facebook</a>
                            </div>
                            <div class="chrome-button">
                                <a href="#">Connect with Google</a>
                            </div>
                            <div class="button-bottom">
                                <p>Already have an account? <a href="#small-dialog"
                                                               class="play-icon popup-with-zoom-anim">Login</a></p>
                            </div>
                        </div>
                        <div class="signup">
                            <form action="user/doreg" method="post" id="reg-form">
                                <input type="text" placeholder="用户名" name="userName" required="required"/>
                                <input type="password" placeholder="密码" name="userPass" required="required"
                                       pattern=".{6,}" title="Minimum 6 characters required"/>
                                <input type="text" onblur="doajax(this)" placeholder="手机号" name="userTel"/>
                                <p style="display: none" id="error-message"></p>
                                <input type="button" onclick="dosubmit()" value="注册"/>
                            </form>
                        </div>
                        <script>
                            function doajax(th) {
                                var data = th.value;
                                $.post("user/check", {tel: data}, function (str) {
                                    var errors = $("#error-message");
                                    if (str.message != null && str.message != "") {
                                        errors.css({"display": "block", "color": "#FF0000"});
                                        errors.text(str.message);
                                    } else {
                                        errors.css({"display": "none"});
                                        errors.text("");
                                    }
                                })
                            }

                            function dosubmit() {
                                var errors = $("#error-message");
                                if (errors.text() == "手机号已被注册") {
                                    return;
                                }
                                $("#reg-form").submit();
                            }
                        </script>
                        <div class="clearfix"></div>
                    </div>
                    <div id="small-dialog7" class="mfp-hide">
                        <h3>Create Account</h3>
                        <div class="social-sits">
                            <div class="facebook-button">
                                <a href="#">Connect with Facebook</a>
                            </div>
                            <div class="chrome-button">
                                <a href="#">Connect with Google</a>
                            </div>
                            <div class="button-bottom">
                                <p>Already have an account? <a href="#small-dialog"
                                                               class="play-icon popup-with-zoom-anim">Login</a></p>
                            </div>
                        </div>
                        <div class="signup">
                            <form action="/cinema/upload.jsp">
                                <input type="text" class="email" placeholder="Email" required="required"
                                       pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>
                                <input type="password" placeholder="Password" required="required" pattern=".{6,}"
                                       title="Minimum 6 characters required" autocomplete="off"/>
                                <input type="submit" value="Sign In"/>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div id="small-dialog4" class="mfp-hide">
                        <h3>Feedback</h3>
                        <div class="feedback-grids">
                            <div class="feedback-grid">
                                <p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam
                                    mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
                            </div>
                            <div class="button-bottom">
                                <p><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign in</a> to get
                                    started.</p>
                            </div>
                        </div>
                    </div>
                    <div id="small-dialog5" class="mfp-hide">
                        <h3>Help</h3>
                        <div class="help-grid">
                            <p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam
                                mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
                        </div>
                        <div class="help-grids">
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">Feedback</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Lorem ipsum dolor sit
                                    amet</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Nunc vitae rutrum
                                    enim</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris at volutpat
                                    leo</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris vehicula
                                    rutrum velit</a></p>
                            </div>
                            <div class="help-button-bottom">
                                <p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Aliquam eget ante non
                                    orci fac</a></p>
                            </div>
                        </div>
                    </div>
                    <div id="small-dialog6" class="mfp-hide">
                        <div class="video-information-text">
                            <h4>Video information & settings</h4>
                            <p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam
                                mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
                            <ol>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                                <li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum
                                    tincidunt.
                                </li>
                            </ol>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {
                            $('.popup-with-zoom-anim').magnificPopup({
                                type: 'inline',
                                fixedContentPos: false,
                                fixedBgPos: true,
                                overflowY: 'auto',
                                closeBtnInside: true,
                                preloader: false,
                                midClick: true,
                                removalDelay: 300,
                                mainClass: 'my-mfp-zoom-in'
                            });

                        });
                    </script>
                </div>
                <div class="signin">
                    <span style="cursor: pointer;<c:if test="${sessionScope.userId != null}">display: none;</c:if>"
                          onclick="window.location.href='user/login'">登 录</span>
                    <span style="<c:if
                            test="${sessionScope.userId == null}">display: none;</c:if>">${sessionScope.userName}</span>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</nav>
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
                        <a href="/cinema/single.jsp"><img src="images?movieImg=${i.movieImg}" alt=""/></a>
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
                                                <a href="/cinema/single.jsp"><img src="images?movieImg=${i.movieImg}" alt=""/></a>
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
                                                <a href="/cinema/single.jsp"><img src="images?movieImg=${i.movieImg}"
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
                            <a href="/cinema/single.jsp"><img src="images?movieImg=${i.movieImg}" alt=""/></a>
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
                            <a href="/cinema/single.jsp"><img src="images?movieImg=${i.movieImg}" alt=""/></a>
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