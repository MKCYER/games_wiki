<%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/9/14
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>

    <!-- For-Mobile-Apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load",function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //For-Mobile-Apps -->

    <!-- Custom Theme files -->
    <!-- Bootstrap Styling --> <link rel='stylesheet' href="css/bootstrap.css" type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> <script src="js/jquery.min.js"></script>
    <!-- Bootstrap-Working-File --> <script src="js/bootstrap.min.js"></script>
    <!-- Index-Page-Styling --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Owl-Carousel-Styling --> <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
    <!-- //Custom Theme files -->

    <!-- Smooth-Scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
    <!-- //Smooth-Scrolling -->

    <!-- Calender-JavaScript -->
    <link rel="stylesheet" href="css/clndr.css" type="text/css" />
    <script src="js/underscore-min.js" type="text/javascript"></script>
    <script src= "js/moment-2.2.1.js" type="text/javascript"></script>
    <script src="js/clndr.js" type="text/javascript"></script>
    <script src="js/site.js" type="text/javascript"></script>
    <!-- //Calender-JavaScript -->

</head>
<body>
<div class="header">

    <!-- Navbar-Starts-Here -->
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Logo --><a class="navbar-brand" href="#">SSEET</a><!-- //Logo -->

            </div>

            <!-- Navbar-Collapse -->
            <div id="navbar" class="navbar-collapse collapse">

                <ul class="nav navbar-nav navbar-right">

                    <li><a href="#about" class="scroll">TEst</a></li>
                    <li><a href="#foreword" class="scroll">Foreword</a></li>

                    <!-- Dropdown -->
                    <li role="presentation" class="dropdown carat1">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown<span class="caret"></span> </a>
                        <ul class="dropdown-menu dropdown1">
                            <li><a href="#admissions" class="scroll">Admissions</a></li>
                            <li><a href="#alumnus" class="scroll">Alumnus</a></li>
                            <li><a href="#programs" class="scroll">Programs</a></li>
                            <li><a href="#services" class="scroll">Services</a></li>
                            <li><a href="#faculty" class="scroll">Faculty</a></li>
                            <li><a href="#edifice" class="scroll">Edifices</a></li>
                            <li><a href="#project" class="scroll">Projects</a></li>
                            <li><a href="#events" class="scroll">Events</a></li>
                        </ul>
                    </li>
                    <!-- //Dropdown -->

                    <li><a href="#news" class="scroll">News</a></li>
                    <li><a href="#contact" class="scroll">Contact</a></li>

                    <!-- Login-Button -->
                    <li>
                        <div class="login-pop">
                            <div id="loginpop" style="width: 100px">
                                <a href="#" id="loginButton"><span>Login</span></a>
                                <div id="loginBox">
                                    <form id="loginForm">
                                        <fieldset id="body">
                                            <fieldset>
                                                <label for="email">Email Address</label>
                                                <input type="text" name="email" id="email">
                                            </fieldset>
                                            <fieldset>
                                                <label for="password">Password</label>
                                                <input type="password" name="password" id="password">
                                            </fieldset>
                                            <input type="submit" id="login" value="LOGIN">
                                            <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
                                        </fieldset>
                                        <span><a href="#">Forgot your password?</a></span>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <script src="js/menu_jquery.js"></script>
                    </li>
                    <!-- //Login-Button -->

                    <!-- Signup-Button -->
                    <li>
                        <div class="login-pop">
                            <div id="loginpop">
                                <a href="#" id="signupButton"><span>Signup</span></a>
                                <div id="signupBox">
                                    <form id="signupForm">
                                        <fieldset id="body">
                                            <fieldset>
                                                <label for="email">Name</label>
                                                <input type="text" name="email" id="email">
                                            </fieldset>
                                            <fieldset>
                                                <label for="email">Email</label>
                                                <input type="text" name="email" id="email">
                                            </fieldset>
                                            <fieldset>
                                                <label for="email">Username</label>
                                                <input type="text" name="email" id="email">
                                            </fieldset>
                                            <fieldset>
                                                <label for="password">Password</label>
                                                <input type="password" name="password" id="password">
                                            </fieldset>
                                            <input type="submit" id="login" value="SIGNUP">
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <script src="js/signup_jquery.js"></script>
                    </li>
                    <!-- //Signup-Button -->

                </ul>
            </div>
            <!-- //Navbar-Collapse -->

        </div>
    </nav>
    <!-- //Navbar-Ends-Here -->

    <!-- Carousel-Starts-Here -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">

        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>

        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="images/0.jpg" alt="First Slide">
            </div>

            <div class="item">
                <img class="second-slide" src="images/1.jpg" alt="Second Slide">
            </div>

            <div class="item">
                <img class="second-slide" src="images/2.jpg" alt="Second Slide">
            </div>

            <div class="item">
                <img class="third-slide" src="images/3.jpg" alt="Third Slide">
            </div>

            <div class="item">
                <img class="sixth-slide" src="images/6.jpg" alt="Sixth Slide">
            </div>

            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!-- //Carousel-Ends-Here -->

</div>
</body>
</html>
