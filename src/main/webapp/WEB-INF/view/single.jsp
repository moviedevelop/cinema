<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link href="/cinema/css/alert.css" rel="stylesheet" type="text/css">
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


    </style>

</head>
<body>
<script>
    Date.prototype.Format = function (fmt) { //author: meizz
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "H+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }
</script>
<%@include file="topnav.jsp" %>
<%@include file="leftside.jsp" %>
<div class="alert"
     style="height:50px;line-height: 25px;font-size:14px;width:15%;margin:auto;position:absolute;top:0;left:0;bottom:0;right:0;"></div>
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
                    <button class="btn btn-link" onclick="addComment()">写影评</button>
                    <button class="btn btn-link" onclick="selectComment()">我的评论</button>
                </div>
                <script>
                    function selectComment() {

                        if (${userId == null && userId != ''}){
                            $('.alert').html("亲，要先登录哦").addClass('alert-danger').show().delay(2000).fadeOut();
                        }else{
                            var data = {};
                            data["movieId"] = ${movieDetail.movieId};
                            var postComment = JSON.stringify(data);
                            $.ajax({
                                type:"post",
                                url:"/cinema/comment/limit",
                                dataType: "json",
                                contentType:"application/json",
                                data:postComment,
                                success:function (comments) {
                                    var str = "";
                                    for (var i = 0; i < comments.length;i++){
                                        //console.log(comments[i].commentContent + "-->" + comments[i].users.userName);
                                        str += "<div class='media'><h5>"+ comments[i].users.userName +"</h5><div class='media-left'>" +
                                        "<img src='"+ comments[i].users.userImg + "' > </div><div class='media-body'><p>" + comments[i].commentContent
                                        + "</p><span>发布时间 :" + comments[i].commentTime   + "</span><br><span>评分：" + comments[i].commentScore + "</span></div></div>"
                                    }
                                    $("#comment").html(str);
                                }
                            })
                        }
                    }
                    
                    function addComment() {
                        if ($("#box").css("display") == "none") {
                            $("#box").css("display", "block");
                        } else {
                            $("#box").css("display", "none");
                        }

                    }

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
                                if (json.message == "收藏成功") {
                                    $('.alert').html(json.message).addClass('alert-info').show().delay(2000).fadeOut();
                                    /*$("#collection").text(json.message);
                                    $("#collection").css("display","inline-block");
                                    $("#collection").hide(3000);*/
                                } else if (json.message == "亲，要先登录哦") {
                                    $('.alert').html(json.message).addClass('alert-danger').show().delay(2000).fadeOut();
                                }

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
                            <p>${commentCount}人评价</p>
                        </div>
                    </div>
                    <div class="row">
                        <span style="padding: 0">标签</span>
                        <p>${movieDetail.keyWord}</p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>

            <div class="all-comments">
                <div class="all-comments-info">

                    <div class="box" id="box" style="display: none">
                        <a href="#">All Comments (${commentCount})</a>
                        <form id="comment-form">
                            <input type="hidden" value="${movieDetail.movieId}" name="movieId">
                            <input type="text" placeholder="电影评分(1-10)" name="commentScore">
                            <textarea placeholder="在这里写下你的评论哦" name="commentContent"></textarea>
                            <input type="button" onclick="doComment()" value="写好了">
                            <div class="clearfix"></div>
                        </form>
                        <script>

                            function doComment() {
                                var commentForm = $("#comment-form").serializeArray();
                                var data = {};
                                var flag = true;
                                if (${userId == null}) {
                                    $('.alert').html("亲，要先登录哦").addClass('alert-danger').show().delay(2000).fadeOut();
                                    return;
                                }
                                $.each(commentForm, function () {
                                    if (this.name == "commentScore") {
                                        var reg = /^([0-9]|10)$/;
                                        if (!reg.test(this.value)) {
                                            alert("评分需为0-10的整数");
                                            //$('.alert').html("评分需为0-10的整数").addClass('alert-danger').show().delay(2000).fadeOut();
                                            flag = false;
                                        }
                                        data[this.name] = this.value;
                                    }
                                    if (this.name == "commentContent") {
                                        if (this.value == null || this.value == '') {
                                            //$('.alert').html("评论内容不能为空").addClass('alert-danger').show().delay(2000).fadeOut();
                                            alert("评论内容不能为空");
                                            flag = false;
                                        }
                                        data[this.name] = this.value;
                                    }
                                    data[this.name] = this.value;
                                })
                                var comment = JSON.stringify(data);
                                if (flag) {
                                    $.ajax({
                                        url: "/cinema/comment/add",
                                        type: "post",
                                        contentType: "application/json",
                                        data: comment,
                                        success: function (json) {
                                            $('.alert').html(json.message).addClass('alert-info').show().delay(2000).fadeOut();
                                            $("#box").css("display", "none");
                                            $("#comment").prepend("<div class='media'><h5>${userName}</h5><div class='media-left'>" +
                                                "<img src='/cinema/images/avtar.png' > </div><div class='media-body'><p>" + data.commentContent
                                                + "</p><span>发布时间 :" + new Date().Format("yyyy-MM-dd") + "</span><br><span>评分：" + data.commentScore + "</span></div></div>");
                                        }
                                    })
                                }

                            }
                        </script>
                    </div>
                    <%--<div class="all-comments-buttons">
                        <ul>
                            <li><a href="#" class="top">Top Comments</a></li>
                            <li><a href="#" class="top my-comment">My Comments</a></li>
                        </ul>
                    </div>--%>
                </div>
                <div class="media-grids" id="comment">
                    <c:forEach items="${commentsList}" var="i" varStatus="s">
                        <c:if test="${s.count <= 6}">
                            <div class="media">
                                <h5>${i.users.userName}</h5>
                                <div class="media-left">
                                    <img src="${i.users.userImg}" alt="">
                                </div>
                                <div class="media-body">
                                    <p>${i.commentContent}</p>
                                    <span>发布时间 : <fmt:formatDate value="${i.commentTime}"
                                                                 pattern="yyyy-MM-dd"/></span><br>
                                    <span>评分：${i.commentScore}</span>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
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