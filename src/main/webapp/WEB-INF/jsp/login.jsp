<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>  

<!DOCTYPE html>
<html>
    <head>

        <title>Super Magic</title>
        <meta name="author" content="Gavin" />
        <meta name="description" content="Super Magic" />
        <meta name="keywords" content="Super Magic" />
        <meta name="application-name" content="Super Magic" />

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <base href=" <%=basePath%>" />

        <!-- Le styles -->
        <link href="static/css/bootstrap/bootstrap.css" rel="stylesheet" />
        <link href="static/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
        <link href="static/css/supr-theme/jquery.ui.supr.css" rel="stylesheet" type="text/css" />
        <link href="static/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="static/plugins/uniform/uniform.default.css" type="text/css" rel="stylesheet" />

        <!-- Main stylesheets -->
        <link href="static/css/main.css" rel="stylesheet" type="text/css" /> 

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!--[if lt IE 9]>
            <link type="text/css" href="css/ie.css" rel="stylesheet" />
        <![endif]-->

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="static/images/favicon.ico" />
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="static/images/apple-touch-icon-144-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="static/images/apple-touch-icon-114-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="static/images/apple-touch-icon-72-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" href="static/images/apple-touch-icon-57-precomposed.png" />

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

            <%
                String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
                if (error != null) {
            %>
            <div class="alert alert-error input-medium controls">
                <button class="close" data-dismiss="alert">×</button>登录失败，请重试.
            </div>
            <%
                }
            %>
            <div class="loginContainer">
                <form class="form-horizontal" action="login" id="loginForm" method="POST"/>
                <div class="form-row row-fluid">
                    <div class="span12">
                        <div class="row-fluid">
                            <label class="form-label span12" for="username">
                                Username:
                                <span class="icon16 icomoon-icon-user-2 right gray marginR10"></span>
                            </label>
                            <input class="span12" id="username" type="text" name="username" value="admin" />
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
                            <input class="span12" id="password" type="password" name="password" value="admin" />
                        </div>
                    </div>
                </div>
                <div class="form-row row-fluid">                       
                    <div class="span12">
                        <div class="row-fluid">
                            <div class="form-actions">
                                <div class="span12 controls">
                                    <input type="checkbox" id="rememberMe" value="Value" class="styled" name="rememberMe" /> Keep me logged in
                                    <button type="submit" class="btn btn-info right" id="loginBtn"><span class="icon16 icomoon-icon-enter white"></span> Login</button>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>

                </form>
            </div>

        </div><!-- End .container-fluid -->

        <!-- Le javascript
        ================================================== -->
        <script type="text/javascript" src="static/js/jquery.min.js"></script>
        <script type="text/javascript" src="static/js/bootstrap/bootstrap.js"></script>  
        <script type="text/javascript" src="static/plugins/touch-punch/jquery.ui.touch-punch.min.js"></script>
        <script type="text/javascript" src="static/plugins/ios-fix/ios-orientationchange-fix.js"></script>
        <script type="text/javascript" src="static/plugins/validate/jquery.validate.min.js"></script>
        <script type="text/javascript" src="static/plugins/uniform/jquery.uniform.min.js"></script>

        <script type="text/javascript">
            // document ready function
            $(document).ready(function() {
                $("input, textarea, select").not('.nostyle').uniform();
                $("#loginForm").validate({
                    rules: {
                        username: {
                            required: true,
                            minlength: 4
                        },
                        password: {
                            required: true,
                            minlength: 4
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
