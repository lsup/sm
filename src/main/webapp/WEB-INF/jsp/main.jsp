<html>
    <head>
        <title>Main Page</title>
        <%@include file="/WEB-INF/layouts/jspf/import-qtip.jspf"%>
        <script type="text/javascript" src="static/js/main.js"></script><!-- Core js functions -->
    </head>

    <!--    <body>
            <div class="heading">
    
                <h3>Dashboard</h3>                    
    
                <div class="resBtnSearch">
                    <a href="#"><span class="icon16 brocco-icon-search"></span></a>
                </div>
    
                <div class="search">
    
                    <form id="searchform" action="search.html" />
                    <input type="text" id="tipue_search_input" class="top-search" placeholder="Search here ..." />
                    <input type="submit" id="tipue_search_button" class="search-btn" value="" />
                    </form>
    
                </div> End search 
    
                <ul class="breadcrumb">
                    <li>You are here:</li>
                    <li>
                        <a href="#" class="tip" title="back to dashboard">
                            <span class="icon16 icomoon-icon-screen"></span>
                        </a> 
                        <span class="divider">
                            <span class="icon16 icomoon-icon-arrow-right"></span>
                        </span>
                    </li>
                    <li class="active">Dashboard</li>
                </ul>
    
            </div> End .heading
    
             Build page from here: 
            <div class="row-fluid">
    
                <div class="span8">
                    <div class="centerContent">
    
                        <ul class="bigBtnIcon">
                            <li>
                                <a href="#" title="I`m with gradient" class="tipB">
                                    <span class="icon entypo-icon-users"></span>
                                    <span class="txt">Users</span>
                                    <span class="notification">5</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon icomoon-icon-support"></span>
                                    <span class="txt">Support tickets</span>
                                    <span class="notification blue">12</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="I`m with pattern" class="pattern tipB">
                                    <span class="icon icomoon-icon-comments-2"></span>
                                    <span class="txt">New Comments</span>
                                    <span class="notification green">23</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon icomoon-icon-basket"></span>
                                    <span class="txt">Orders</span>
                                    <span class="notification">+5</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon icomoon-icon-history"></span>
                                    <span class="txt">Backups</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon icomoon-icon-meter-fast"></span>
                                    <span class="txt">Site Usage</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div> End .span8 
    
                <div class="span4">
                    <div class="centerContent">
                        <div class="circle-stats">
    
                            <div class="circular-item tipB" title="Site overload">
                                <span class="icon icomoon-icon-fire"></span>
                                <input type="text" value="62" class="redCircle" />
                            </div>
    
                            <div class="circular-item tipB" title="Site average load time">
                                <span class="icon icomoon-icon-busy"></span>
                                <input type="text" value="12" class="blueCircle" />
                            </div>
    
                            <div class="circular-item tipB" title="Target complete">
                                <span class="icon iconic-icon-target"></span>
                                <input type="text" value="94" class="greenCircle" />
                            </div>
    
                        </div>
                    </div>
    
                </div> End .span4 
    
            </div> End .row-fluid 
    
            <div class="row-fluid">
    
                <div class="span8">
    
                    <div class="box chart gradient">
    
                        <div class="title">
    
                            <h4>
                                <span class="icon16 icomoon-icon-bars"></span>
                                <span>Visitors Chart</span>
                            </h4>
                            <a href="#" class="minimize">Minimize</a>
                        </div>
                        <div class="content" style="padding-bottom:0;">
                            <div class="visitors-chart" style="height: 230px;width:100%;margin-top:15px; margin-bottom:15px;"></div>
                            <ul class="chartShortcuts">
                                <li>
                                    <a href="#">
                                        <span class="head">Total Visits</span>
                                        <span class="number">509</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="head">Uniqiue Visits</span>
                                        <span class="number">309</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="head">External Visits</span>
                                        <span class="number">109</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="head">Impressions</span>
                                        <span class="number">325</span>
                                    </a>
                                </li>
                            </ul>
    
                        </div>
    
                    </div> End .box 
    
                </div> End .span8 
    
                <div class="span4">
    
                    <div class="sparkStats">
                        <h4>389 people visited this site <a href="#" class="icon tip" title="Configure"><span class="icon16 iconic-icon-cog"></span></a></h4>
                        <ul class="unstyled">
                            <li><span class="sparkLine1 "></span> Visits: <span class="number">509</span></li>
                            <li>
                                <span class="sparkLine2"></span>
                                Unique Visitors: 
                                <span class="number">389</span>
                            </li>
                            <li><span class="sparkLine3"></span> 
                                Pageviews: 
                                <span class="number">731</span>
                            </li>
                            <li><span class="sparkLine4"></span>
                                Pages / Visit: 
                                <span class="number">1.44</span>
                            </li>
                            <li><span class="sparkLine5"></span>
                                Avg. Visit Duration: 
                                <span class="number">00:01:21</span>
                            </li>
                            <li><span class="sparkLine6"></span>
                                Bounce Rate: <span class="number">68.37%</span>
                            </li>
                            <li><span class="sparkLine7"></span>
                                % New Visits: 
                                <span class="number">76.23%</span>
                            </li>
    
                        </ul>
                        <div class="right" style="padding: 15px 0">
                            <a href="charts.html" class="btn btn-info">View full statistic <span class="icon16 icomoon-icon-arrow-right white"></span></a>
                        </div>
                    </div> End .sparkStats 
    
    
                </div> End .span4 
    
            </div> End .row-fluid 
    
            <div class="row-fluid">
    
                <div class="span4">
    
                    <div class="box gradient">
    
                        <div class="title">
    
                            <h4>
                                <span class="icon16 icomoon-icon-pie"></span>
                                <span>Visitors overview</span>
                            </h4>
                            <a href="#" class="minimize">Minimize</a>
                        </div>
                        <div class="content">
                            <div class="pieStats" style="height: 240px; width:100%;">
    
                            </div>
                        </div>
    
                    </div> End .box 
    
    
                </div> End .span4 
    
                <div class="span4">
                    <div class="box gradient">
    
                        <div class="title">
    
                            <h4>
                                <span class="icon16 entypo-icon-thumbs-up"></span>
                                <span>Vital Stats  <span class="label label-success"><span class="icomoon-icon-arrow-up white"></span>1268</span></span>
                            </h4>
                            <a href="#" class="minimize">Minimize</a>
                        </div>
                        <div class="content">
    
                            <div class="vital-stats" style="padding-bottom:23px">
                                <ul class="unstyled">
                                    <li>
                                        <span class="icomoon-icon-arrow-up green"></span> 81% Clicks
                                        <span class="pull-right strong">567</span>
                                        <div class="progress progress-striped ">
                                            <div class="bar" style="width: 81%;"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <span class="icomoon-icon-arrow-up green"></span> 72% Uniquie Clicks
                                        <span class="pull-right strong">507</span>
                                        <div class="progress progress-success progress-striped ">
                                            <div class="bar" style="width: 72%;"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <span class="icomoon-icon-arrow-down red"></span> 53% Impressions
                                        <span class="pull-right strong">457</span>
                                        <div class="progress progress-warning progress-striped ">
                                            <div class="bar" style="width: 53%;"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <span class="icomoon-icon-arrow-up green"></span> 3% Online Users
                                        <span class="pull-right strong">8</span>
                                        <div class="progress progress-danger progress-striped ">
                                            <div class="bar" style="width: 3%;"></div>
                                        </div>
                                    </li>
    
                                </ul>
                            </div>
    
                        </div>
    
                    </div> End .box   
                </div> End .span4 
    
                <div class="span4">
    
                    <div class="reminder">
                        <h4>Things you need to do 
                            <a href="#" class="icon tip" title="Configure"><span class="icon16 iconic-icon-cog"></span></a>
                        </h4>
                        <ul>
                            <li class="clearfix">
                                <div class="icon">
                                    <span class="icon32 icomoon-icon-basket gray"></span>
                                </div>
                                <span class="number">7</span> 
                                <span class="txt">Pending Orders</span>
                                <a class="btn btn-warning">go</a>
                            </li>
                            <li class="clearfix">
                                <div class="icon">
                                    <span class="icon32 icomoon-icon-support red"></span>
                                </div>
                                <span class="number">3</span> 
                                <span class="txt">Support Tickets </span>
                                <a class="btn btn-warning">go</a>
                            </li>
                            <li class="clearfix">
                                <div class="icon">
                                    <span class="icon32 icomoon-icon-new green"></span>
                                </div>
                                <span class="number">5</span> 
                                <span class="txt">New Invoices </span>
                                <a class="btn btn-warning">go</a>
                            </li>
                            <li class="clearfix">
                                <div class="icon">
                                    <span class="icon32 icomoon-icon-comments-4 blue"></span>
                                </div>
                                <span class="number">13</span> 
                                <span class="txt">Review Comments</span> 
                                <a class="btn btn-warning">go</a>
                            </li>
                            <li class="clearfix">
                                <div class="icon">
                                    <span class="icon32 icomoon-icon-cog dark"></span>
                                </div>
                                <span class="number">2</span> 
                                <span class="txt">Settings to Change </span>
                                <a class="btn btn-warning">go</a>
                            </li>                                   
                        </ul>
                    </div> End .reminder 
    
                </div> End .span4 
    
            </div> End .row-fluid 
    
            <div class="row-fluid">
    
                <div class="span8">
                    <div class="box calendar gradient">
    
                        <div class="title">
    
                            <h4>
                                <i class="icon16 brocco-icon-calendar"></i>
                                <span>Calendar</span>
                            </h4>
                             <a href="#" class="minimize">Minimize</a> 
                        </div>
                        <div class="content noPad"> 
                            <div id="calendar">
                            </div>
                        </div>
    
                    </div> End .box   
                </div> End .span8  
    
                <div class="span4">
    
                    <div class="todo">
                        <h4>To Do List <a href="#" class="icon tip" title="Add task"><span class="icon16 icomoon-icon-plus-2"></span></a></h4>
                        <ul>
                            <li class="clearfix">
                                <div class="txt">
                                    Fix some bugs
                                    <span class="by label">Admin</span>
                                    <span class="date badge badge-important">Today</span>
                                </div>
                                <div class="controls">
                                    <a href="#" title="Edit task" class="tip"><span class="icon12 icomoon-icon-pencil"></span></a>
                                    <a href="#" title="Remove task" class="tip"><span class="icon12 icomoon-icon-remove"></span></a>
                                </div>
                            </li>
                            <li class="clearfix">
                                <div class="txt">
                                    Add post about birds
                                    <span class="by label">Julia</span>
                                    <span class="date badge badge-success">Tomorrow</span>
                                </div>
                                <div class="controls">
                                    <a href="#" title="Edit task" class="tip"><span class="icon12 icomoon-icon-pencil"></span></a>
                                    <a href="#" title="Remove task" class="tip"><span class="icon12 icomoon-icon-remove"></span></a>
                                </div>
                            </li>
                            <li class="clearfix">
                                <div class="txt">
                                    Remove some items
                                    <span class="by label">Admin</span>
                                    <span class="date badge badge-success">Tomorrow</span>
                                </div>
                                <div class="controls">
                                    <a href="#" title="Edit task" class="tip"><span class="icon12 icomoon-icon-pencil"></span></a>
                                    <a href="#" title="Remove task" class="tip"><span class="icon12 icomoon-icon-remove"></span></a>
                                </div>
                            </li>
                            <li class="clearfix">
                                <div class="txt">
                                    Staff party (don`t miss)
                                    <span class="by label">Admin</span>
                                    <span class="date badge badge-info">08.08.2012</span>
                                </div>
                                <div class="controls">
                                    <a href="#" title="Edit task" class="tip"><span class="icon12 icomoon-icon-pencil"></span></a>
                                    <a href="#" title="Remove task" class="tip"><span class="icon12 icomoon-icon-remove"></span></a>
                                </div>
                            </li>
                            <li class="clearfix">
                                <div class="txt">
                                    Shedule backup
                                    <span class="by label">Steve</span>
                                    <span class="date badge badge-info">08.08.2012</span>
                                </div>
                                <div class="controls">
                                    <a href="#" title="Edit task" class="tip"><span class="icon12 icomoon-icon-pencil"></span></a>
                                    <a href="#" title="Remove task" class="tip"><span class="icon12 icomoon-icon-remove"></span></a>
                                </div>
                            </li>
                        </ul>
                    </div>
    
                </div> End .span4 
    
                <div class="span4">
    
                    <div class="box gradient">
                        <div class="title">
                            <h4>
                                <span class="icon16 silk-icon-chat"></span>
                                <span>Messages layout</span>
                            </h4>
                        </div>
                        <div class="content noPad">
    
                            <ul class="messages">
                                <li class="user clearfix">
                                    <a href="#" class="avatar">
                                        <img src="static/images/avatar2.jpeg" alt="" />
                                    </a>
                                    <div class="message">
                                        <div class="head clearfix">
                                            <span class="name"><strong>Lazar</strong> says:</span>
                                            <span class="time">25 seconds ago</span>
                                        </div>
                                        <p>
                                            Time to go i call you tomorrow.
                                        </p>
                                    </div>
                                </li>
                                <li class="admin clearfix">
                                    <a href="#" class="avatar">
                                        <img src="static/images/avatar3.jpeg" alt="" />
                                    </a>
                                    <div class="message">
                                        <div class="head clearfix">
                                            <span class="name"><strong>Sugge</strong> says:</span>
                                            <span class="time">just now</span>
                                        </div>
                                        <p>
                                            OK, have a nice day.
                                        </p>
                                    </div>
                                </li>
    
                                <li class="sendMsg">
                                    <form class="form-horizontal" action="#" />
                                    <textarea class="elastic" id="textarea" rows="1" placeholder="Enter your message ..." style="width:98%;"></textarea>
                                    <button type="submit" class="btn btn-info marginT10">Send message</button>
                                    </form>
                                </li>
    
                            </ul>
    
                        </div>
    
                    </div> End .box 
    
    
                </div> End .span4 
    
            </div> End .row-fluid 
    
            <div class="modal fade hide" id="myModal1">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span class="icon12 minia-icon-close"></span></button>
                    <h3>Chat layout</h3>
                </div>
                <div class="modal-body">
                    <ul class="messages">
                        <li class="user clearfix">
                            <a href="#" class="avatar">
                                <img src="static/images/avatar2.jpeg" alt="" />
                            </a>
                            <div class="message">
                                <div class="head clearfix">
                                    <span class="name"><strong>Lazar</strong> says:</span>
                                    <span class="time">25 seconds ago</span>
                                </div>
                                <p>
                                    Time to go i call you tomorrow.
                                </p>
                            </div>
                        </li>
                        <li class="admin clearfix">
                            <a href="#" class="avatar">
                                <img src="static/images/avatar3.jpeg" alt="" />
                            </a>
                            <div class="message">
                                <div class="head clearfix">
                                    <span class="name"><strong>Sugge</strong> says:</span>
                                    <span class="time">just now</span>
                                </div>
                                <p>
                                    OK, have a nice day.
                                </p>
                            </div>
                        </li>
    
                        <li class="sendMsg">
                            <form class="form-horizontal" action="#" />
                            <textarea class="elastic" id="textarea1" rows="1" placeholder="Enter your message ..." style="width:98%;"></textarea>
                            <button type="submit" class="btn btn-info marginT10">Send message</button>
                            </form>
                        </li>
    
                    </ul>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">Close</a>
                </div>
            </div>-->

    <!-- Load plugins -->
    <!--    <script type="text/javascript" src="static/plugins/qtip/jquery.qtip.min.js"></script>
            <script type="text/javascript" src="static/plugins/flot/jquery.flot.js"></script>
            <script type="text/javascript" src="static/plugins/flot/jquery.flot.grow.js"></script>
            <script type="text/javascript" src="static/plugins/flot/jquery.flot.pie.js"></script>
            <script type="text/javascript" src="static/plugins/flot/jquery.flot.resize.js"></script>
            <script type="text/javascript" src="static/plugins/flot/jquery.flot.tooltip_0.4.4.js"></script>
            <script type="text/javascript" src="static/plugins/flot/jquery.flot.orderBars.js"></script>
    
            <script type="text/javascript" src="static/plugins/sparkline/jquery.sparkline.min.js"></script>
            <script type="text/javascript" src="static/plugins/knob/jquery.knob.js"></script>
            <script type="text/javascript" src="static/plugins/fullcalendar/fullcalendar.min.js"></script>
            <script type="text/javascript" src="static/plugins/prettify/prettify.js"></script>
    
            <script type="text/javascript" src="static/plugins/watermark/jquery.watermark.min.js"></script>
            <script type="text/javascript" src="static/plugins/elastic/jquery.elastic.js"></script>
            <script type="text/javascript" src="static/plugins/inputlimiter/jquery.inputlimiter.1.3.min.js"></script>
            <script type="text/javascript" src="static/plugins/maskedinput/jquery.maskedinput-1.3.min.js"></script>
            <script type="text/javascript" src="static/plugins/ibutton/jquery.ibutton.min.js"></script>
            <script type="text/javascript" src="static/plugins/uniform/jquery.uniform.min.js"></script>
            <script type="text/javascript" src="static/plugins/stepper/ui.stepper.js"></script>
            <script type="text/javascript" src="static/plugins/color-picker/colorpicker.js"></script>
            <script type="text/javascript" src="static/plugins/timeentry/jquery.timeentry.min.js"></script>
            <script type="text/javascript" src="static/plugins/select/select2.min.js"></script>
            <script type="text/javascript" src="static/plugins/dualselect/jquery.dualListBox-1.3.min.js"></script>
            <script type="text/javascript" src="static/plugins/tiny_mce/jquery.tinymce.js"></script>
            <script type="text/javascript" src="static/plugins/validate/jquery.validate.min.js"></script>
            <script type="text/javascript" src="static/plugins/search/tipuesearch_set.js"></script>-->
    <!--<script type="text/javascript" src="static/plugins/search/tipuesearch_data.js"></script> JSON for searched results -->
    <!--<script type="text/javascript" src="static/plugins/search/tipuesearch.js"></script>-->

    <!--        <script type="text/javascript" src="static/plugins/animated-progress-bar/jquery.progressbar.js"></script>
            <script type="text/javascript" src="static/plugins/pnotify/jquery.pnotify.min.js"></script>
            <script type="text/javascript" src="static/plugins/lazy-load/jquery.lazyload.min.js"></script>
            <script type="text/javascript" src="static/plugins/jpages/jPages.min.js"></script>
            <script type="text/javascript" src="static/plugins/pretty-photo/jquery.prettyPhoto.js"></script>
            <script type="text/javascript" src="static/plugins/smartWizzard/jquery.smartWizard-2.0.min.js"></script>
    
            <script type="text/javascript" src="static/plugins/ios-fix/ios-orientationchange-fix.js"></script>
    
            <script type="text/javascript" src="static/plugins/dataTables/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="static/plugins/elfinder/elfinder.min.js"></script>
            <script type="text/javascript" src="static/plugins/plupload/plupload.js"></script>
            <script type="text/javascript" src="static/plugins/plupload/plupload.html4.js"></script>
            <script type="text/javascript" src="static/plugins/plupload/jquery.plupload.queue/jquery.plupload.queue.js"></script>-->

    <!-- Init plugins -->
    <!--<script type="text/javascript" src="static/js/statistic.js"></script> Control graphs ( chart, pies and etc) -->

    <!-- Important Place before main.js  -->
    <!--<script type="text/javascript" src="static/js/jquery-ui.min.js"></script>-->
    <!--<script type="text/javascript" src="static/plugins/touch-punch/jquery.ui.touch-punch.min.js"></script>-->

    <!--</body>-->
</html>
