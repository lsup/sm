<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>

<head>
    <%@include file="/WEB-INF/layouts/jspf/import-validate.jspf"%>
    <script>
        $(document).ready(function() {
            $("input, textarea, select").not('.nostyle').uniform();
            $("#loginForm").validate({
                rules: {
                    username: {required: true, minlength: 4},
                    password: {required: true, minlength: 4}
                },
                messages: {
                    username: {required: "Fill me please", minlength: "My name is bigger"},
                    password: {required: "Please provide a password", minlength: "My password is more that 4 chars"}
                }
            });
        });
    </script>
</head>
<body>
    <div class="loginPage">

        <div class="container">

            <div id="header">

                <div class="row">

                    <div class="navbar">
                        <div class="container">
                            <a class="navbar-brand" href="dashboard.html">Super.<span class="slogan">Mario</span></a>
                        </div>
                    </div><!-- /navbar -->

                </div><!-- End .row -->

            </div><!-- End #header -->

        </div><!-- End .container -->    

        <div class="container">

            <div class="loginContainer">
                <form class="form-horizontal" action="login" id="loginForm" role="form" method="POST">
                    <div class="form-group">
                        <label class="col-lg-12 control-label" for="username">Username:</label>
                        <div class="col-lg-12">
                            <input id="username" type="text" name="username" class="form-control" value="admin" placeholder="Enter your username ...">
                            <span class="icon16 icomoon-icon-user right gray marginR10"></span>
                        </div>
                    </div><!-- End .form-group  -->
                    <div class="form-group">
                        <label class="col-lg-12 control-label" for="password">Password:</label>
                        <div class="col-lg-12">
                            <input id="password" type="password" name="password" value="admin" class="form-control">
                            <span class="icon16 icomoon-icon-lock right gray marginR10"></span>
                            <span class="forgot help-block"><a href="#">Forgot your password?</a></span>
                        </div>
                    </div><!-- End .form-group  -->
                    <div class="form-group">
                        <div class="col-lg-12 clearfix form-actions">
                            <div class="checkbox left">
                                <label><input type="checkbox" id="rememberMe" value="Value" class="styled" name="rememberMe" /> Keep me logged in</label>
                            </div>
                            <button type="submit" class="btn btn-info right" id="loginBtn"><span class="icon16 icomoon-icon-enter white"></span> Login</button>
                        </div>
                    </div><!-- End .form-group  -->
                </form>
            </div>

        </div><!-- End .container -->
    </div>

</body>
