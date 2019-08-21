<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<!-- bootstrap -->
		<link href="/cinema/css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all"/>
		<!-- //bootstrap -->
		<link href="/cinema/css/dashboard.css" rel="stylesheet">
		<!-- Custom Theme files -->
		<link href="/cinema/css/style.css" rel='stylesheet' type='text/css' media="all"/>
		<script src="/cinema/js/jquery-3.4.1.min.js"></script>
		<script src="/cinema/layui/layui.js"></script>
		<script src="/cinema/layui/layui.all.js"></script>
		<!--start-smoth-scrolling-->
		<style>
			body {
		padding-top: 0;
		}
		.title{
		text-align: center;
		background-color: #edf4ed;
		margin-bottom: 0px;
			margin-top:15px;
		height: 80px;
		padding-top: 10px;
		}
		.head-image{
			line-height: 80px;
		}
       .Info-container{
            position: relative;
            overflow: hidden;
            padding: 10px;
		    margin-left: 18%;
			width: 750px;
			height: 800px;
        }
		.form-group{
			padding-top: 35px;
			padding-bottom: 35px;
			margin-top: 40px;
			font-size: 16px;
		}
		.photo{
			padding-left: 100px;
		}
			
		.base{
			display: inline-block;
			height: 34px;
			line-height: 34px;
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
				<li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" ></span>电影<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
				<ul class="cl-effect-2">
					<li><a href="/cinema/movie/hotMovies" style="margin-left: 46px">正在热映</a></li>
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
				<li class="active"><a href="/cinema/user/showdata" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>用户中心</a></li>
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
			<div class="title">
				<span style="font-size: 40px;color: #008B00;">用&nbsp;&nbsp; 户&nbsp;&nbsp; 中&nbsp;&nbsp; 心</span>
			</div>
			<div class="Info-container">
				<form id="form" action="update" method="post">
					<input type="hidden" name="userId" value="${users.userId}">
					<div class="form-group">
						<div class="col-md-2">
							<label>头&nbsp;&nbsp;&nbsp;像：</label>
						</div>
						<div class="col-md-10">
							<img src="${users.userImg}"/>
							<a href="" class="photo">更换头像</a>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-2 base">
							<label for="username">用&nbsp;户&nbsp;名：</label>
						</div>
						<div class="col-md-10">
							<input type="text" name="userName" id="username" class="form-control" placeholder="用户名" value="${users.userName}"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-2 base">
							<label for="password">密&nbsp;&nbsp;&nbsp;码：</label>
						</div>
						<div class="col-md-10">
							<input type="password" name="userPass" id="password" class="form-control" placeholder="密码" value="${users.userPass}"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-2 base">
							<label for="phone">手&nbsp;机&nbsp;号：</label>
						</div>
						<div class="col-md-10">
							<input type="text" id="phone" name="userTel" class="form-control" placeholder="手机号" value="${users.userTel}"/>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-2">
							<label for="about">自我介绍：</label>
						</div>
						<div class="col-md-10">
							<textarea id="about" rows="5" name="userAbout" class="form-control" placeholder="自我介绍" >${users.userAbout}</textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-4 col-md-8">
							<br><br><br>
							<input type="submit" value="提交修改" id="commit" class="btn btn-success"/>
						</div>
						<script>
							$('#commit').on('click', function(){
								layer.msg('修改成功',{icon: 1},{
									time:400000,
								});

							});
						</script>
					</div>
				</form>
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
