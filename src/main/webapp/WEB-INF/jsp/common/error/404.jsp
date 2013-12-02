<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="errorPage">

    <div class="container-fluid">

        <div class="errorContainer">
            <div class="page-header">
                <h1 class="center">404 <small>error</small></h1>
            </div>

            <h2 class="center">The page cannot be found.</h2>

            <div class="center">
                <a href="javascript: history.go(-1)" class="btn" style="margin-right:10px;"><span class="icon16 typ-icon-back"></span>Go back</a>
                <a href="dashboard.html" class="btn"><span class="icon16 cut-icon-screen"></span>Dashboard</a>
            </div>

        </div>

    </div><!-- End .container-fluid -->


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

</div>
