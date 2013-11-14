<%@include file="../common/init.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Login Page</title>

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/static/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/static/css/supr-theme/jquery.ui.supr.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/static/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/static/css/uniform.default.css" rel="stylesheet" type="text/css" />
        
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-validate.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.uniform.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>

        <base href="<%=basePath%>"> 
        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>
    <body class="loginPage">

        <div class="container-fluid">

            <div id="header">

                <div class="row-fluid">

                    <div class="navbar">
                        <div class="navbar-inner">
                            <div class="container">
                                <a class="brand" href="dashboard.html">Supr.<span class="slogan">admin</span></a>
                            </div>
                        </div><!-- /navbar-inner -->
                    </div><!-- /navbar -->


                </div><!-- End .row-fluid -->

            </div><!-- End #header -->

        </div><!-- End .container-fluid -->    

        <div class="container-fluid">

            <div class="loginContainer">
                <form class="form-horizontal" action="dashboard.html" id="loginForm" >
                    <div class="form-row row-fluid">
                        <div class="span12">
                            <div class="row-fluid">
                                <label class="form-label span12" for="username">
                                    Username:
                                    <span class="icon16 icomoon-icon-user-3 right gray marginR10"></span>
                                </label>
                                <input class="span12" id="username" type="text" name="username" value="Administrator" />
                            </div>
                        </div>
                    </div>

                    <div class="form-row row-fluid">
                        <div class="span12">
                            <div class="row-fluid">
                                <label class="form-label span12" for="password">
                                    Password:
                                    <span class="icon16 icomoon-icon-locked right gray marginR10"></span>
                                    <span class="forgot"><a href="#">Forgot your password?</a></span>
                                </label>
                                <input class="span12" id="password" type="password" name="password" value="somepass" />
                            </div>
                        </div>
                    </div>
                    <div class="form-row row-fluid">                       
                        <div class="span12">
                            <div class="row-fluid">
                                <div class="form-actions">
                                    <div class="span12 controls">
                                        <input type="checkbox" id="keepLoged" value="Value" class="styled" name="logged" /> Keep me logged in
                                        <button type="submit" class="btn btn-info right" id="loginBtn"><span class="icon16 icomoon-icon-enter white"></span> Login</button>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>

                </form>
            </div>

        </div><!-- End .container-fluid -->

        <script type="text/javascript">
            // document ready function
            $(document).ready(function() {
                $("#loginForm").validate({
                    rules: {
                        username: {
                            required: true,
                            minlength: 4
                        },
                        password: {
                            required: true,
                            minlength: 6
                        }
                    },
                    messages: {
                        username: {
                            required: "Fill me please",
                            minlength: "My name is bigger"
                        },
                        password: {
                            required: "Please provide a password",
                            minlength: "My password is more that 6 chars"
                        }
                    }
                });
            });
        </script>
    </body>
</html>
