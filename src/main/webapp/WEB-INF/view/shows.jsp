<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Shows</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- bootstrap -->
	<link href="/cinema/css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all"/>
	<!-- //bootstrap -->
	<link href="/cinema/css/dashboard.css" rel="stylesheet">
	<!-- Custom Theme files -->
	<link href="/cinema/css/style.css" rel='stylesheet' type='text/css' media="all"/>
	<script src="/cinema/js/jquery-3.4.1.min.js"></script>
	<!--start-smoth-scrolling-->

	<%--电视剧列表页--%>

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
			  <li><a href="/cinema/index.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
			  <li class="active"><a href="/cinema/shows.jsp" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>电视剧</a></li>
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
  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="show-top-grids">
				<div class="col-sm-10 show-grid-left main-grids">
					<div class="recommended">
						<div class="recommended-grids english-grid">
							<div class="recommended-info">
								<div class="heading">
									<h3>热播新剧</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">订阅</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<c:forEach items="${recentTelePlays}" var="i" varStatus="s">
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="/cinema/single.jsp"><img src="/cinema/images/${i.movieImg}" alt="" /></a>
									<div class="time small-time show-time">
										<p>${i.movieTime}</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="/cinema/single.jsp" class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
									<p class="author"><a href="#" class="author">${i.movieArea}</a></p>
									<p class="views">${i.movieLang}</p>
								</div>
							</div>
							</c:forEach>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>最佳片单</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">订阅</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<c:forEach items="${highMarkTelePlays}" var="i" varStatus="s">
								<c:if test="${s.count <= 6}">
								<div class="col-md-2 resent-grid recommended-grid show-video-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="/cinema/single.jsp"><img src="/cinema/images/${i.movieImg}" alt="" /></a>
										<div class="time small-time show-time">
											<p>${i.movieTime}</p>
										</div>
										<div class="clck show-clock">
											<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
										</div>
									</div>
									<div class="resent-grid-info recommended-grid-info">
										<h5><a href="/cinema/single.jsp" class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
										<p class="author"><a href="#" class="author">${i.movieArea}</a></p>
										<p class="views">${i.movieLang}</p>
									</div>
								</div>
								</c:if>
							</c:forEach>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>中国大陆</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">订阅</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<c:forEach items="${telePlaysByChina}" var="i" varStatus="s">
								<div class="col-md-2 resent-grid recommended-grid show-video-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="/cinema/single.jsp"><img src="/cinema/images/${i.movieImg}" alt="" /></a>
										<div class="time small-time show-time">
											<p>${i.movieTime}</p>
										</div>
										<div class="clck show-clock">
											<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
										</div>
									</div>
									<div class="resent-grid-info recommended-grid-info">
										<h5><a href="/cinema/single.jsp" class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
										<p class="author"><a href="#" class="author">${i.movieArea}</a></p>
										<p class="views">${i.movieLang}</p>
									</div>
								</div>
							</c:forEach>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>海外精选</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">订阅</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<c:forEach items="${telePlaysByUnChina}" var="i" varStatus="s">
								<div class="col-md-2 resent-grid recommended-grid show-video-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="/cinema/single.jsp"><img src="/cinema/images/${i.movieImg}" alt="" /></a>
										<div class="time small-time show-time">
											<p>${i.movieTime}</p>
										</div>
										<div class="clck show-clock">
											<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
										</div>
									</div>
									<div class="resent-grid-info recommended-grid-info">
										<h5><a href="/cinema/single.jsp" class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
										<p class="author"><a href="#" class="author">${i.movieArea}</a></p>
										<p class="views">${i.movieLang}</p>
									</div>
								</div>
							</c:forEach>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>热门综艺</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">订阅</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<c:forEach items="${varietyShows}" var="i" varStatus="s">
								<div class="col-md-2 resent-grid recommended-grid show-video-grid">
									<div class="resent-grid-img recommended-grid-img">
										<a href="/cinema/single.jsp"><img src="/cinema/images/${i.movieImg}" alt="" /></a>
										<div class="time small-time show-time">
											<p>${i.movieTime}</p>
										</div>
										<div class="clck show-clock">
											<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
										</div>
									</div>
									<div class="resent-grid-info recommended-grid-info">
										<h5><a href="/cinema/single.jsp" class="title">${i.movieName}（<span style="padding: 0;margin: 0;color: red">${i.movieMark}</span>）</a></h5>
										<p class="author"><a href="#" class="author">${i.movieArea}</a></p>
										<p class="views">${i.movieLang}</p>
									</div>
								</div>
							</c:forEach>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-2 show-grid-right">
					<h3>为你推荐</h3>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">最好的我们</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">致我们单纯的小美好</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">楚乔传</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">白夜追凶</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">香蜜沉沉烬如霜</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">向往的生活 第二季</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">明星大侦探 第一季</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">极限挑战 第二季</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="/cinema/images/tv.png" alt="" /></a></li>
							<li><a href="#">一千零一夜 第四季</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
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