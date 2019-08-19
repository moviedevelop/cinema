<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/12
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <a href="#small-dialog3" style="<c:if test="${sessionScope.userId != null}">display: none;</c:if>" class="play-icon popup-with-zoom-anim">注 册</a>
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
                                <p>Already have an account? <a href="/cinema/user/login" class="play-icon popup-with-zoom-anim">Login</a></p>
                            </div>
                        </div>
                        <div class="signup">
                            <form action="/cinema/user/doreg" method="post" id="reg-form">
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
                    <%--<div id="small-dialog7" class="mfp-hide">
                        <h3>Create Account</h3>
                        <div class="social-sits">
                            <div class="facebook-button">
                                <a href="#">Connect with Facebook</a>
                            </div>
                            <div class="chrome-button">
                                <a href="#">Connect with Google</a>
                            </div>
                            <div class="button-bottom">
                                <p>Already have an account? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">Login</a></p>
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
                    </div>--%>
                    <%--<div id="small-dialog4" class="mfp-hide">
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
                    </div>--%>
                    <%--<div id="small-dialog5" class="mfp-hide">
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
                    </div>--%>
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
                    <span style="cursor: pointer;<c:if test="${sessionScope.userId != null}">display: none;</c:if>" onclick="window.location.href='/cinema/user/login'">登 录</span>
                    <span style="<c:if test="${sessionScope.userId == null}">display: none;</c:if>">${sessionScope.userName}</span>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</nav>