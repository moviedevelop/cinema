<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/10
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <li class="active"><a href="index.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
            <li><a href="/cinema/shows.jsp" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>电视剧</a></li>
            <li><a href="/cinema/history.jsp" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>历史</a></li>
            <li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>电影<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-2">
                <li><a href="/cinema/movies.jsp" style="margin-left: 46px">正在热映</a></li>
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
            <li><a href="/cinema/movies.jsp" class="song-icon"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>动漫</a></li>
            <li><a href="/cinema/news.jsp" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>用户中心</a></li>
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
