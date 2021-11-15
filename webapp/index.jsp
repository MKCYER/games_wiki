<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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

<!-- Body-Starts-Here -->
<body>

<!-- Header-Starts-Here -->
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
                            <div id="loginpop">
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
<!-- Header-Ends-Here -->

<!-- Content-Starts-Here -->
<div class="content">

    <!-- Heading --><h1 class="abbr">SCHOOL FOR STUDENT EXCHANGE, ENGINEERING & TECHNOLOGY</h1><!-- //Heading -->

    <div class="container">

        <!-- About-Starts-Here -->
        <div class="about slideanim" id="about">
            <h2>ABOUT</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

            <div class="about-info slideanim">
                <div class="col-md-6 col-sm-6" id="about-pic">
                    <img src="images/9.jpg" alt="About">
                </div>
                <div class="col-md-6 col-sm-6" id="about-p">
                    <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum velit esse cillum dolore.</p>
                    <span>"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum velit esse cillum dolore."</span>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //About-Ends-Here -->

        <!-- Foreword-Starts-Here -->
        <div class="foreword slideanim" id="foreword">
            <h3>FOREWORD</h3>
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
            <span>Johann Schmidt</span>
            <span>Vice-Chancellor</span>
        </div>
        <!-- //Foreword-Ends-Here -->

        <!-- Admissions-Starts-Here -->
        <div class="admissions slideanim" id="admissions">
            <h3>ADMISSIONS-2016 PROSPECTUS</h3>
            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum velit esse cillum dolore eu fugiat nulla pariatur commodo. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

            <!-- Add a PDF file and give its link here if required -->
            <div class="pdf">
                <a href="#"><sup>[PDF]</sup>Admissions</a>
            </div>
        </div>
        <!-- //Admissions-Ends-Here -->

        <!-- Alumnus-Starts-Here -->
        <div class="alumnus slideanim" id="alumnus">
            <h3>ALUMNUS</h3>
            <div class="alumnus-grid">
                <div class="col-md-4 col-sm-4 a1">
                    <h4>Lorem</h4>
                    <img src="images/6.jpg" alt="alumnus">
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
                <div class="col-md-4 col-sm-4 a1">
                    <h4>Ipsum</h4>
                    <img src="images/4.jpg" alt="alumnus">
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
                <div class="col-md-4 col-sm-4 a1">
                    <h4>Dolores</h4>
                    <img src="images/9.jpg" alt="alumnus">
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Alumnus-Ends-Here -->

        <!-- Programs-Starts-Here -->
        <div class="programs slideanim" id="programs">
            <h3>PROGRAMS</h3>
            <p>Lorem Ipsum Dolor Sit Amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>

            <div class="program-grid">
                <div class="col-md-3 col-sm-6 p1">
                    <div class="program1">
                        <h4>Lorem</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 p1">
                    <div class="program2">
                        <h4>Ipsum</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 p1">
                    <div class="program3">
                        <h4>Dolor</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 p1">
                    <div class="program4">
                        <h4>Sitamet</h4>
                        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Programs-Ends-Here -->

        <!-- Services-Starts-Here -->
        <div class="services slideanim" id="services">
            <h3>SERVICES</h3>
            <p>We have taken up some Social Services done by our students in the slums and backward regions so that they can not only excel in education, but also as a good human being in the society.</p>
            <div class="col-md-6 col-sm-6 s1">
                <div class="services-info1">
                    <h4>Free Medical Services</h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum cillum dolore eu fugiat nulla commodo.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 s1">
                <div class="services-info2">
                    <h4>Free Education</h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum cillum dolore eu fugiat nulla commodo.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 s1">
                <div class="services-info3">
                    <h4>Free Medicine Supply</h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum cillum dolore eu fugiat nulla commodo.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 s1">
                <div class="services-info4">
                    <h4>Social Interaction</h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum cillum dolore eu fugiat nulla commodo.</p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //Services-Ends-Here --><div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>

        <!-- Faculty-Starts-Here -->
        <div class="faculty slideanim" id="faculty">
            <h3>FACULTY</h3>
            <div class="col-md-3 col-sm-3 team-top">
                <div class="view view-seventh">
                    <a href="#"><img class="img-responsive" src="images/f1.jpg" alt="name"></a>
                    <div class="mask">
                        <ul class="social">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        </ul>
                    </div>
                    <h6>Ross Gellar</h6>
                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 team-top team-in">
                <div class="view view-seventh">
                    <a href="#"><img class="img-responsive" src="images/f2.jpg" alt="name"></a>
                    <div class="mask">
                        <ul class="social">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        </ul>
                    </div>
                    <h6>Mike Hannigan</h6>
                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 team-top">
                <div class="view view-seventh">
                    <a href="#"><img class="img-responsive" src="images/f3.jpg" alt="name"></a>
                    <div class="mask">
                        <ul class="social">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        </ul>
                    </div>
                    <h6>Chandler Bing</h6>
                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 team-top top-team">
                <div class="view view-seventh">
                    <a href="#"><img class="img-responsive" src="images/f4.jpg" alt="name"></a>
                    <div class="mask">
                        <ul class="social">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        </ul>
                    </div>
                    <h6>Rachel Green</h6>
                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 team-top top-team">
                <div class="view view-seventh">
                    <a href="#"><img class="img-responsive" src="images/f5.jpg" alt="name"></a>
                    <div class="mask">
                        <ul class="social">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        </ul>
                    </div>
                    <h6>Janice Hank</h6>
                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 team-top top-team">
                <div class="view view-seventh">
                    <a href="#"><img class="img-responsive" src="images/f6.jpg" alt="name"></a>
                    <div class="mask">
                        <ul class="social">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        </ul>
                    </div>
                    <h6>Boris Johnson</h6>
                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 team-top top-team">
                <div class="view view-seventh">
                    <a href="#"><img class="img-responsive" src="images/f7.jpg" alt="name"></a>
                    <div class="mask">
                        <ul class="social">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        </ul>
                    </div>
                    <h6>Leslie Chow</h6>
                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 team-top top-team">
                <div class="view view-seventh">
                    <a href="#"><img class="img-responsive" src="images/f8.jpg" alt="name"></a>
                    <div class="mask">
                        <ul class="social">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                        </ul>
                    </div>
                    <h6>James May</h6>
                    <p>But I must explain to you how all this mistaken idea of denouncing</p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!-- //Faculty-Ends-Here -->

        <!-- Edifice-Starts-Here -->
        <div class="edifice slideanim" id="edifice">
            <h3>INFRASTRUCTURE & FACILITIES</h3>
            <div class="gallery-cursual">

                <!-- requried-jsfiles-for owl -->
                <script src="js/owl.carousel.js"></script>
                <script>
                    $(document).ready(function() {
                        $("#owl-demo").owlCarousel ({
                            items : 3,
                            lazyLoad : true,
                            autoPlay : true,
                            pagination : false,
                        });
                    });
                </script>
                <!-- //requried-jsfiles-for owl -->

                <!-- start content_slider -->
                <div id="owl-demo" class="owl-carousel text-center">
                    <div class="item">
                        <img class="lazyOwl" src="images/11.jpg" alt="name">
                    </div>
                    <div class="item">
                        <img class="lazyOwl" src="images/12.jpg" alt="name">
                    </div>
                    <div class="item">
                        <img class="lazyOwl" src="images/13.jpg" alt="name">
                    </div>
                    <div class="item">
                        <img class="lazyOwl" src="images/15.jpg" alt="name">
                    </div>
                    <div class="item">
                        <img class="lazyOwl" src="images/1.jpg" alt="name">
                    </div>
                    <div class="item">
                        <img class="lazyOwl" src="images/2.jpg" alt="name">
                    </div>
                    <div class="item">
                        <img class="lazyOwl" src="images/3.jpg" alt="name">
                    </div>
                    <div class="item">
                        <img class="lazyOwl" src="images/5.jpg" alt="name">
                    </div>
                    <div class="item">
                        <img class="lazyOwl" src="images/6.jpg" alt="name">
                    </div>
                </div>
                <!--//sreen-gallery-cursual -->
            </div>
        </div>
        <!-- //Edifice-Ends-Here -->

        <!-- Projects-Starts-Here -->
        <div class="project slideanim" id="project">
            <h3>PROJECTS, RESEARCH AND DEVELOPMENT</h3>

            <div class="project-grid">
                <div class="col-md-4 col-sm-4 p2">
                    <img src="images/e1.jpg" alt="project">
                </div>
                <div class="col-md-4 col-sm-4 p2">
                    <h4>Lorem Ipsum</h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui anim id est laborum cillum dolore eu fugiat nulla commodo. Sint occaecat cupidatat non proident, sunt in culpa qui officia laborum.</p>
                </div>
                <div class="col-md-4 col-sm-4 p2 p3">
                    <img src="images/e2.jpg" alt="project">
                </div>
                <div class="col-md-4 col-sm-4 p2 p4">
                    <img src="images/e3.jpg" alt="project">
                </div>
                <div class="col-md-4 col-sm-4 p2 p5">
                    <h4>Dolores Sit</h4>
                    <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui anim id est laborum cillum dolore eu fugiat nulla commodo. Sint occaecat cupidatat non proident, sunt in culpa qui officia laborum.</p>
                </div>
                <div class="col-md-4 col-sm-4 p2 p6">
                    <img src="images/e4.jpg" alt="project">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Projects-Ends-Here -->

        <!-- Events-Starts-Here -->
        <div class="events slideanim" id="events">
            <h3>EVENTS</h3>
            <div class="event-grid">
                <div class="col-md-4 col-sm-4 cal">
                    <div class="cal1 cal_2">
                        <div class="clndr">
                            <div class="clndr-controls"><div class="clndr-control-button"><p class="clndr-previous-button">previous</p></div><div class="month">December 2015</div><div class="clndr-control-button rightalign"><p class="clndr-next-button">next</p></div></div><table class="clndr-table"><thead><tr class="header-days"><td class="header-day">S</td><td class="header-day">M</td><td class="header-day">T</td><td class="header-day">W</td><td class="header-day">T</td><td class="header-day">F</td><td class="header-day">S</td></tr></thead><tbody><tr><td class="day past adjacent-month last-month calendar-day-2015-08-30"><div class="day-contents">30</div></td><td class="day past adjacent-month last-month calendar-day-2015-08-31"><div class="day-contents">31</div></td><td class="day today calendar-day-2015-09-01"><div class="day-contents">1</div></td><td class="day calendar-day-2015-09-02"><div class="day-contents">2</div></td><td class="day calendar-day-2015-09-03"><div class="day-contents">3</div></td><td class="day calendar-day-2015-09-04"><div class="day-contents">4</div></td><td class="day calendar-day-2015-09-05"><div class="day-contents">5</div></td></tr><tr><td class="day calendar-day-2015-09-06"><div class="day-contents">6</div></td><td class="day calendar-day-2015-09-07"><div class="day-contents">7</div></td><td class="day calendar-day-2015-09-08"><div class="day-contents">8</div></td><td class="day calendar-day-2015-09-09"><div class="day-contents">9</div></td><td class="day event calendar-day-2015-09-10"><div class="day-contents">10</div></td><td class="day event calendar-day-2015-09-11"><div class="day-contents">11</div></td><td class="day event calendar-day-2015-09-12"><div class="day-contents">12</div></td></tr><tr><td class="day event calendar-day-2015-09-13"><div class="day-contents">13</div></td><td class="day event calendar-day-2015-09-14"><div class="day-contents">14</div></td><td class="day calendar-day-2015-09-15"><div class="day-contents">15</div></td><td class="day calendar-day-2015-09-16"><div class="day-contents">16</div></td><td class="day calendar-day-2015-09-17"><div class="day-contents">17</div></td><td class="day calendar-day-2015-09-18"><div class="day-contents">18</div></td><td class="day calendar-day-2015-09-19"><div class="day-contents">19</div></td></tr><tr><td class="day calendar-day-2015-09-20"><div class="day-contents">20</div></td><td class="day event calendar-day-2015-09-21"><div class="day-contents">21</div></td><td class="day event calendar-day-2015-09-22"><div class="day-contents">22</div></td><td class="day event calendar-day-2015-09-23"><div class="day-contents">23</div></td><td class="day calendar-day-2015-09-24"><div class="day-contents">24</div></td><td class="day calendar-day-2015-09-25"><div class="day-contents">25</div></td><td class="day calendar-day-2015-09-26"><div class="day-contents">26</div></td></tr><tr><td class="day calendar-day-2015-09-27"><div class="day-contents">27</div></td><td class="day calendar-day-2015-09-28"><div class="day-contents">28</div></td><td class="day calendar-day-2015-09-29"><div class="day-contents">29</div></td><td class="day calendar-day-2015-09-30"><div class="day-contents">30</div></td><td class="day adjacent-month next-month calendar-day-2015-10-01"><div class="day-contents">1</div></td><td class="day adjacent-month next-month calendar-day-2015-10-02"><div class="day-contents">2</div></td><td class="day adjacent-month next-month calendar-day-2015-10-03"><div class="day-contents">3</div></td></tr></tbody></table>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-4 event-info e1">
                    <h3>Lorem Ipsum</h3>
                    <ul>
                        <li><span>22-12-2015</span> : Excepteur sint cupidatat proident.</li>
                        <li><span>23-12-2015</span> : Sunt in culpa quideserunt anim.</li>
                        <li><span>24-12-2015</span> : Officia deserunt sint anim cup.</li>
                        <li><span>26-12-2015</span> : Proident, sunt in culpa qui di.</li>
                        <li><span>27-12-2015</span> : Sunt in qui officia deserunt mo.</li>
                        <li><span>28-12-2015</span> : Officia deserunt sint anim cup.</li>
                        <li><span>29-12-2015</span> : Cupidatat sint non di proident.</li>
                    </ul>
                </div>

                <div class="col-md-4 col-sm-4 event-info e2">
                    <h3>Dolores Amet</h3>
                    <img src="images/event.jpg" alt="event">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Events-Ends-Here -->

        <!-- News-Starts-Here -->
        <div class="news slideanim" id="news">
            <h3>OUR OWN NEWS PUBLICATION</h3>
            <div class="news-img">
                <div class="col-md-4 col-sm-4 n1">
                    <img src="images/n1.jpg" alt="news">
                </div>
                <div class="col-md-4 col-sm-4 n1">
                    <img src="images/n2.jpg" alt="news">
                </div>
                <div class="col-md-4 col-sm-4 n1">
                    <img src="images/n3.jpg" alt="news">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //News-Ends-Here -->

        <!-- Contact-Starts-Here -->
        <div class="contact slideanim" id="contact">
            <h3>CONTACT</h3>
            <form class="contact_form">

                <div class="message">
                    <div class="col-md-6 col-sm-6 grid_6 c1">
                        <input type="text" class="text" value="Name" placeholder="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
                        <input type="text" class="text" value="Email" placeholder="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
                        <input type="text" class="text" value="Phone" placeholder="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}">
                    </div>

                    <div class="col-md-6 col-sm-6 grid_6 c1">
                        <textarea placeholder="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
                    </div>
                    <div class="clearfix"> </div>
                </div>

                <input type="submit" class="more_btn" value="Send Message">
            </form>
        </div>
        <!-- //Contact-Ends-Here -->

    </div>

    <!-- Map-iFrame -->
    <div class="map slideanim">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22702.22744502486!2d11.113366067229226!3d44.662878362361056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x477fc3eca9065c15%3A0x12ec8a03aadae866!2s40019+Sant&#39;Agata+Bolognese+BO%2C+Italy!5e0!3m2!1sen!2sin!4v1451281303075" allowfullscreen></iframe>
    </div>
    <!-- //Map-iFrame -->

</div>
<!-- Content-Ends-Here -->

<!-- Footer-Starts-Here -->
<div class="footer slideanim">

    <div class="container">

        <div class="footer-info slideanim">
            <div class="col-md-6 col-sm-6 access f1">
                <h3 class="access-h3">Access</h3>
                <p class="access-p">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation, sed do eiusmod ullamco laboris nisi ut enim ad minim aliquip ex ea commodo consequat.</p>
            </div>
            <div class="col-md-4 col-sm-4 f2">
                <h3 class="address">Address</h3>
                <address>
                    <ul>
                        <li>Parma Via Modena</li>
                        <li>40019 Sant'Agata Bolognese</li>
                        <li>BO, Italy</li>
                        <li>Telephone : +1 (734) 123-4567</li>
                        <li>Email : <a class="mail" href="mailto:mail@example.com">info(at)sseet.com</a></li>
                    </ul>
                </address>
            </div>
            <div class="col-md-2 col-sm-2 f3" id="qlinks">
                <h3>Links</h3>
                <ul class="footer_list">
                    <li><a href="#about" class="scroll">About</a></li>
                    <li><a href="#programs" class="scroll">Programs</a></li>
                    <li><a href="#services" class="scroll">Services</a></li>
                    <li><a href="#edifice" class="scroll">Edifice</a></li>
                    <li><a href="#project" class="scroll">Projects</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>

        <ul class="social slideanim" id="follow">
            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
            <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
            <li><a href="#" class="youtube" title="Go to Our Youtube Channel"></a></li>
        </ul>

        <div class="copyright">
            <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </div>

    </div>

    <!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
    <script type="text/javascript">
        $(document).ready(function() {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear'
            };
            */
            $().UItoTop({ easingType: 'easeOutQuart' });
        });
    </script>
    <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    <!-- //Slide-To-Top JavaScript -->

</div>
<!-- //Footer-Ends-Here -->

<script>
    $(document).ready(function(){
// Add smooth scrolling to all links in navbar + footer link
        $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

// Prevent default anchor click behavior
            event.preventDefault();

// Store hash
            var hash = this.hash;

// Using jQuery's animate() method to add smooth page scroll
// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function(){

                // Add hash (#) to URL when done scrolling (default click behavior)
                window.location.hash = hash;
            });
        });

        $(window).scroll(function() {
            $(".slideanim").each(function(){
                var pos = $(this).offset().top;

                var winTop = $(window).scrollTop();
                if (pos < winTop + 600) {
                    $(this).addClass("slide");
                }
            });
        });
    })
</script>

</body>
<!-- Body-Ends-Here -->

</html>