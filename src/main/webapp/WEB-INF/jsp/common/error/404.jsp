<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>404</title>

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/static/css/bootstrap/bootstrap.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/static/css/bootstrap/bootstrap-responsive.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/static/css/icons.css" rel="stylesheet" type="text/css" />

        <!-- Main stylesheets -->
        <link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/css" />

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="images/favicon.ico" />
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/apple-touch-icon-144-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/apple-touch-icon-114-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/apple-touch-icon-72-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" href="images/apple-touch-icon-57-precomposed.png" />

    </head>

    <body class="errorPage">

        <div class="container-fluid">

            <div class="errorContainer">
                <div class="page-header">
                    <h1 class="center">404 <small>error</small></h1>
                </div>

                <h2 class="center">The page cannot be found.</h2>

                <div class="center">
                    <a href="javascript: history.go(-1)" class="btn" style="margin-right:10px;"><span class="icon16 icomoon-icon-arrow-left-10"></span>Go back</a>
                    <a href="dashboard.html" class="btn"><span class="icon16 icomoon-icon-screen"></span>Dashboard</a>
                </div>

            </div>

        </div><!-- End .container-fluid -->

        <!-- Le javascript
        ================================================== -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/bootstrap/bootstrap.js"></script>

        <script type="text/javascript">
            // document ready function
            $(document).ready(function() {
                //------------- Some fancy stuff in error pages -------------//
                $('.errorContainer').hide();
                $('.errorContainer').fadeIn(1000).animate({
                    'top': "50%", 'margin-top': +($('.errorContainer').height() / -2 - 30)
                }, {duration: 750, queue: false}, function() {
                    // Animation complete.
                });
            });
        </script>

    </body>
</html>
