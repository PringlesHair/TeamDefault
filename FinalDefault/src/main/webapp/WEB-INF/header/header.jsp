<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="./assets/img/favicon.ico">

    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
        function Load_Main() {
            location.href = "${cpath}/index.do"
        }

        function Load_RegisterForm() {
            location.href = "${cpath}/UserRegisterForm.do"
        }

        function Load_LoginForm() {
            location.href = "${cpath}/UserLoginForm.do"
        }
    </script>
</head>

<body>
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="./assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <header>
        <div class="header-area header-transparent">
            <div class="main-header ">
                <div class="header-bottom  header-sticky">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo">
                                    <a href="javascript:Load_Main()"><img src="./assets/img/logo/logo.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10">
                                <div class="menu-wrapper d-flex align-items-center justify-content-end">
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li><a href="javascript:Load_Main()">Home</a></li>
                                                <li><a href="community.html">Community</a></li>
                                                <li><a href="theme.html">Theme</a></li>
                                                <li class="button-header margin-left "><a href="javascript:Load_RegisterForm()" class="btn">Register</a>
                                                </li>
                                                <li class="button-header"><a href="javascript:Load_LoginForm()" class="btn">Log In</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>

</html>