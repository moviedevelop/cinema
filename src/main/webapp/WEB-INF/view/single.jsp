<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>single</title>
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
    <script src="/cinema/js/tipso.js"></script>
    <!--start-smoth-scrolling-->

    <style>
        .col-md-6 span {
            display: inline-block;
            font-size: 15px;
            padding: 0px 0px 5px 0px;
        }

        .col-md-2 p {
            vertical-align: middle;
            height: 26px;
            line-height: 26px;
            font-size: 14px;
        }

        .col-md-2 .col-md-4 span {
            padding: 0px;
            font-weight: bold;
            font-size: 20px;
            color: red;
        }

        .alertWindowContent h1, p {
            text-align: center;
            font-size: 18px;
            font-weight: bolder;
        }

        .alertWindowContent input {
            width: 100px;
            height: 50px;
            cursor: pointer;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
        }



    </style>

</head>
<body>
<%@include file="topnav.jsp" %>
<%@include file="leftside.jsp" %>

<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="show-top-grids">
        <div class="col-sm-8 single-left">
            <div class="row">
                <h3 style="padding-left: 5px">${movieDetail.movieName}</h3>
                <div class="col-md-3" style="padding-left: 5px;padding-right: 0px">
                    <img src="/cinema/images/${movieDetail.movieImg}" alt="">
                </div>
                <div class="col-md-6" style="text-align: left;margin-left: 15px;">
                    <span>导演：${movieDetail.movieDirector}</span><br>
                    <span>编剧：${movieDetail.movieWriter}</span><br>
                    <span>主演：${movieDetail.movieActor}</span><br>
                    <span>类型：${movieDetail.movieType}</span><br>
                    <span>制片国家/地区：${movieDetail.movieArea}</span><br>
                    <span>语言：${movieDetail.movieLang}</span><br>
                    <span>上映日期：${movieDetail.movieDate}</span><br>
                    <span>片长：${movieDetail.movieTime}</span><br>
                    <c:if test="${movieDetail.movieClassify != -1 && movieDetail.movieClassify != 0}">
                        <span>集数：${movieDetail.movieSize}</span><br>
                    </c:if>
                    <span style="display: none" id="collection"></span>
                    <br>
                    <button class="btn btn-link" onclick="addCollection()">想看</button>
                    <button class="btn btn-link">写影评</button>
                </div>
                <script>

                    //使用json的ajax
                    function addCollection() {
                        var collections = {
                            movieId:${movieDetail.movieId}
                        }
                        var data = JSON.stringify(collections);
                        $.ajax({
                            type: "post",
                            url: "/cinema/collection/add",
                            dataType: "json",
                            contentType: "application/json",
                            data: data,
                            success: function (json) {
                                $("#collection").text(json.message);
                                $("#collection").css("display","inline-block");
                                $("#collection").hide(3000);
                            }
                        })
                    }

                </script>
                <script>
                    $(document).ready(function () {
                        $(".col-md-6 span").each(function () {
                            var span_height = $(this).height();
                            if (span_height > 84) {
                                $(this).css("height", "84px");
                                $(this).css("overflow", "hidden");
                                $(this).after("<span class=\"morecon\" >点开更多内容</span>");
                            }
                        });
                        $(".morecon").click(function () {
                            if ($(this).text() == "点开更多内容") {
                                $(this).parent().children("span").css("height", "auto");
                                $(this).text("点击收起");
                            } else if ($(this).text() == "点击收起") {
                                $(".col-md-6 span").each(function () {
                                    var span_height = $(this).height();
                                    if (span_height > 84) {
                                        $(this).css("height", "84px");
                                        $(this).css("overflow", "hidden");
                                    }
                                });
                                $(this).text("点开更多内容");
                            }

                        });
                    });
                </script>
                <div class="col-md-2">
                    <div class="row">
                        <p>电影评分</p>
                        <div class="col-md-4">
                            <span>${movieDetail.movieMark}</span>
                        </div>
                        <div class="col-md-8">
                            <p>200人评价</p>
                        </div>
                    </div>
                    <div class="row">
                        <span style="padding: 0">标签</span>
                        <p>${movieDetail.keyWord}</p>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>
            <div class="published">
                <script src="/cinema/js/jquery-3.4.1.min.js"></script>
                <script>
                    $(document).ready(function () {
                        size_li = $("#myList li").size();
                        x = 1;
                        $('#myList li:lt(' + x + ')').show();
                        $('#loadMore').click(function () {
                            x = (x + 1 <= size_li) ? x + 1 : size_li;
                            $('#myList li:lt(' + x + ')').show();
                        });
                        $('#showLess').click(function () {
                            x = (x - 1 < 0) ? 1 : x - 1;
                            $('#myList li').not(':lt(' + x + ')').hide();
                        });
                    });
                </script>
                <div class="load_more">
                    <ul id="myList">
                        <li>
                            <h4>Published on 15 June 2015</h4>
                            <p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel ultricies erat, vel sodales leo.
                                Maecenas pellentesque, est suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac
                                dignissim diam velit id tellus. Morbi luctus velit quis semper egestas. Nam condimentum
                                sem eget ex iaculis bibendum. Nam tortor felis, commodo faucibus sollicitudin ac, luctus
                                a turpis. Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
                        </li>
                        <li>
                            <p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel ultricies erat, vel sodales leo.
                                Maecenas pellentesque, est suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac
                                dignissim diam velit id tellus. Morbi luctus velit quis semper egestas. Nam condimentum
                                sem eget ex iaculis bibendum. Nam tortor felis, commodo faucibus sollicitudin ac, luctus
                                a turpis. Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
                            <p>Nullam fringilla sagittis tortor ut rhoncus. Nam vel ultricies erat, vel sodales leo.
                                Maecenas pellentesque, est suscipit laoreet tincidunt, ipsum tortor vestibulum leo, ac
                                dignissim diam velit id tellus. Morbi luctus velit quis semper egestas. Nam condimentum
                                sem eget ex iaculis bibendum. Nam tortor felis, commodo faucibus sollicitudin ac, luctus
                                a turpis. Donec congue pretium nisl, sed fringilla tellus tempus in.</p>
                            <div class="load-grids">
                                <div class="load-grid">
                                    <p>Category</p>
                                </div>
                                <div class="load-grid">
                                    <a href="../../movies.jsp">Entertainment</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="all-comments">
                <div class="all-comments-info">
                    <a href="#">All Comments (8,657)</a>
                    <div class="box">
                        <form>
                            <input type="text" placeholder="Name" required=" ">
                            <input type="text" placeholder="Email" required=" ">
                            <input type="text" placeholder="Phone" required=" ">
                            <textarea placeholder="Message" required=" "></textarea>
                            <input type="submit" value="SEND">
                            <div class="clearfix"></div>
                        </form>
                    </div>
                    <div class="all-comments-buttons">
                        <ul>
                            <li><a href="#" class="top">Top Comments</a></li>
                            <li><a href="#" class="top newest">Newest First</a></li>
                            <li><a href="#" class="top my-comment">My Comments</a></li>
                        </ul>
                    </div>
                </div>
                <div class="media-grids">
                    <div class="media">
                        <h5>Tom Brown</h5>
                        <div class="media-left">
                            <a href="#">

                            </a>
                        </div>
                        <div class="media-body">
                            <p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit
                                maecenas imperdiet ipsum id ex pretium hendrerit</p>
                            <span>View all posts by :<a href="#"> Admin </a></span>
                        </div>
                    </div>
                    <div class="media">
                        <h5>Mark Johnson</h5>
                        <div class="media-left">
                            <a href="#">

                            </a>
                        </div>
                        <div class="media-body">
                            <p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit
                                maecenas imperdiet ipsum id ex pretium hendrerit</p>
                            <span>View all posts by :<a href="#"> Admin </a></span>
                        </div>
                    </div>
                    <div class="media">
                        <h5>Steven Smith</h5>
                        <div class="media-left">
                            <a href="#">

                            </a>
                        </div>
                        <div class="media-body">
                            <p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit
                                maecenas imperdiet ipsum id ex pretium hendrerit</p>
                            <span>View all posts by :<a href="#"> Admin </a></span>
                        </div>
                    </div>
                    <div class="media">
                        <h5>Marry Johne</h5>
                        <div class="media-left">
                            <a href="#">

                            </a>
                        </div>
                        <div class="media-body">
                            <p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit
                                maecenas imperdiet ipsum id ex pretium hendrerit</p>
                            <span>View all posts by :<a href="#"> Admin </a></span>
                        </div>
                    </div>
                    <div class="media">
                        <h5>Mark Johnson</h5>
                        <div class="media-left">
                            <a href="#">

                            </a>
                        </div>
                        <div class="media-body">
                            <p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit
                                maecenas imperdiet ipsum id ex pretium hendrerit</p>
                            <span>View all posts by :<a href="#"> Admin </a></span>
                        </div>
                    </div>
                    <div class="media">
                        <h5>Mark Johnson</h5>
                        <div class="media-left">
                            <a href="#">

                            </a>
                        </div>
                        <div class="media-body">
                            <p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit
                                maecenas imperdiet ipsum id ex pretium hendrerit</p>
                            <span>View all posts by :<a href="#"> Admin </a></span>
                        </div>
                    </div>
                    <div class="media">
                        <h5>Peter Johnson</h5>
                        <div class="media-left">
                            <a href="#">

                            </a>
                        </div>
                        <div class="media-body">
                            <p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit
                                maecenas imperdiet ipsum id ex pretium hendrerit</p>
                            <span>View all posts by :<a href="#"> Admin </a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 single-right">
            <h3>Up Next</h3>
            <div class="single-grid-right">
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r1.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r2.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r3.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r4.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r5.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r6.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author">By <a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r1.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r2.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r3.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r4.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r5.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single-right-grids">
                    <div class="col-md-4 single-right-grid-left">
                        <a href="single.jsp"><img src="/cinema/images/r6.jpg" alt=""/></a>
                    </div>
                    <div class="col-md-8 single-right-grid-right">
                        <a href="single.jsp" class="title"> Nullam interdum metus</a>
                        <p class="author"><a href="#" class="author">John Maniya</a></p>
                        <p class="views">2,114,200 views</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- footer -->
    <%@include file="footer.jsp" %>
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
<script src="../../js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</body>
</html>