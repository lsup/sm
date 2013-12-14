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
            <li><a href="support.html" title="Support" class="tip"><span class="icon24 icomoon-icon-support"></span></a></li>
            <li><a href="#" title="Database backup" class="tip"><span class="icon24 icomoon-icon-database"></span></a></li>
            <li><a href="charts.html" title="Sales statistics" class="tip"><span class="icon24 icomoon-icon-pie-2"></span></a></li>
            <li><a href="#" title="Write post" class="tip"><span class="icon24 icomoon-icon-pencil"></span></a></li>
        </ul>
    </div><!-- End search -->
    <sm:sidenav title="Navigation" sidenav="${sidenav}"/>

    <div class="sidebar-widget">
        <h5 class="title">Monthly Bandwidth Transfer</h5>
        <div class="content">
            <span class="icon16 icomoon-icon-loop left"></span>
            <div class="progress progress-mini left tip" title="87%">
                <div class="progress-bar progress-bar-danger" style="width: 87%;"></div>
            </div>
            <span class="percent">87%</span>
            <div class="stat">19419.94 / 12000 MB</div>
        </div>

    </div><!-- End .sidenav-widget -->

    <div class="sidebar-widget">
        <h5 class="title">Disk Space Usage</h5>
        <div class="content">
            <span class="icon16  icomoon-icon-storage-2 left"></span>
            <div class="progress progress-mini left tip" title="16%">
                <div class="progress-bar progress-bar-success" style="width: 16%;"></div>
            </div>
            <span class="percent">16%</span>
            <div class="stat">304.44 / 8000 MB</div>
        </div>

    </div><!-- End .sidenav-widget -->

    <div class="sidebar-widget">
        <h5 class="title">Ad sense stats</h5>
        <div class="content">

            <div class="stats">
                <div class="item">
                    <div class="head clearfix">
                        <div class="txt">Advert View</div>
                    </div>
                    <span class="icon16 icomoon-icon-eye left"></span>
                    <div class="number">21,501</div>
                    <div class="change">
                        <span class="icon24 icomoon-icon-arrow-up-2 green"></span>
                        5%
                    </div>
                    <span id="stat1" class="spark"></span>
                </div>
                <div class="item">
                    <div class="head clearfix">
                        <div class="txt">Clicks</div>
                    </div>
                    <span class="icon16 icomoon-icon-thumbs-up left"></span>
                    <div class="number">308</div>
                    <div class="change">
                        <span class="icon24 icomoon-icon-arrow-down-2 red"></span>
                        8%
                    </div>
                    <span id="stat2" class="spark"></span>
                </div>
                <div class="item">
                    <div class="head clearfix">
                        <div class="txt">Page CTR</div>
                    </div>
                    <span class="icon16 icomoon-icon-heart left"></span>
                    <div class="number">4%</div>
                    <div class="change">
                        <span class="icon24 icomoon-icon-arrow-down-2 red"></span>
                        1%
                    </div>
                    <span id="stat3" class="spark"></span>
                </div>
                <div class="item">
                    <div class="head clearfix">
                        <div class="txt">Earn money</div>
                    </div>
                    <span class="icon16 icomoon-icon-coin left"></span>
                    <div class="number">$376</div>
                    <div class="change">
                        <span class="icon24 icomoon-icon-arrow-up-2 green"></span>
                        26%
                    </div>
                    <span id="stat4" class="spark"></span>
                </div>
            </div>

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