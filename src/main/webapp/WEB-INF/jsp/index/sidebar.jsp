<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sm" tagdir="/WEB-INF/tags" %>

<!--Responsive navigation button-->
<div class="resBtn">
    <a href="#"><span class="icon16 minia-icon-list-3"></span></a>
</div>

<!--Left Sidebar collapse button-->
<div class="collapseBtn leftbar">
    <a href="#" class="tipR" title="Hide Left Sidebar"><span class="icon12 minia-icon-layout"></span></a>
</div>

<!--Sidebar background-->
<div id="sidebarbg"></div>
<!--Sidebar content-->
<div id="sidebar">

    <div class="shortcuts">
        <ul>
            <li><a href="support.html" title="Support" class="tipR"><span class="icon24 icomoon-icon-support"></span></a></li>
            <li><a href="#" title="Database backup" class="tip"><span class="icon24 icomoon-icon-database"></span></a></li>
            <li><a href="charts.html" title="Sales statistics" class="tip"><span class="icon24 icomoon-icon-pie-2"></span></a></li>
            <li><a href="#" title="Write post" class="tipR"><span class="icon24 icomoon-icon-pencil"></span></a></li>
        </ul>
    </div><!-- End shortcuts -->
    <sm:sidenav title="Navigation" sidenav="${sidenav}"/>

    <div class="sidebar-widget">
        <h5 class="title">Test</h5>
        <div class="content">
            <button id="addTab">Add Tab</button>
            <button id="removeTab">Remove Tab</button>
            <button id="activeTab">Active Tab</button>
        </div>

    </div><!-- End .sidenav-widget -->

    <div class="sidebar-widget">
        <h5 class="title">Right now</h5>
        <div class="content">
            <div class="rightnow">
                <ul class="list-unstyled">
                    <li><span class="number">34</span><span class="icon16 icomoon-icon-new"></span>Posts</li>
                    <li><span class="number">7</span><span class="icon16 icomoon-icon-file"></span>Pages</li>
                    <li><span class="number">14</span><span class="icon16 icomoon-icon-list-2"></span>Categories</li>
                    <li><span class="number">201</span><span class="icon16 icomoon-icon-tag"></span>Tags</li>
                </ul>
            </div>
        </div>

    </div><!-- End .sidenav-widget -->

</div><!-- End #sidebar -->