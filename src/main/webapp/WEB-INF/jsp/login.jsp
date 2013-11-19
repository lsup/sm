<%@include file="common/init.jsp" %>
<!DOCTYPE html>
<title>Super Magic</title>

<meta name="author" content="Gavin" />
<meta name="description" content="Super Magic" />
<meta name="keywords" content="Super Magic" />
<meta name="application-name" content="Super Magic" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- Mobile Specific Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="${pageContext.request.contextPath}/static/css/bootstrap/bootstrap.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/static/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/static/css/supr-theme/jquery.ui.supr.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/static/css/icons.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/static/plugins/uniform/css/uniform.default.css" rel="stylesheet" />

<!-- Main stylesheets -->
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet"/> 

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/images/favicon.ico" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/static/images/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/static/images/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/static/images/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/static/images/apple-touch-icon-57-precomposed.png" />

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap/bootstrap.js"></script>  
<script src="${pageContext.request.contextPath}/static/plugins/touch-punch/jquery.ui.touch-punch.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/ios-fix/ios-orientationchange-fix.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/validate/jquery-validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/uniform/jquery.uniform.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $("input, textarea, select").uniform();
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

<body class="loginPage">

    <div class="container-fluid">

        <div id="header">

            <div class="row-fluid">

                <div class="navbar">
                    <div class="navbar-inner">
                        <div class="container">
                            <a class="brand" href="dashboard.html">Super.<span class="slogan">Magic</span></a>
                        </div>
                    </div><!-- /navbar-inner -->
                </div><!-- /navbar -->

            </div><!-- End .row-fluid -->

        </div><!-- End #header -->

    </div><!-- End .container-fluid -->    

    <div class="container-fluid">

        <div class="loginContainer">
            <form class="form-horizontal" action="${pageContext.request.contextPath}/login" id="loginForm" method="POST"/>
            <div class="form-row row-fluid">
                <div class="span12">
                    <div class="row-fluid">
                        <label class="form-label span12" for="username">
                            Username:
                            <span class="icon16 icomoon-icon-user-2 right gray marginR10"></span>
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
                                <input type="checkbox" id="rememberMe" class="styled" name="rememberMe" /> Keep me logged in
                                <button type="submit" class="btn btn-info right" id="loginBtn"><span class="icon16 icomoon-icon-enter white"></span> Login</button>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>

            </form>
        </div>

    </div><!-- End .container-fluid -->
</body>
