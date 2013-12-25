<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div>
    <h1>Welcome</h1>
    this is the Welcome page!<br />
    <div class="span6">

        <div style="margin-bottom: 20px;">
            <ul id="myTab1" class="nav nav-tabs">
                <li class="active"><a href="#home1" data-toggle="tab">Home</a></li>
                <li><a href="#profile1" data-toggle="tab">Profile</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#dropdown3" data-toggle="tab">@fat</a></li>
                        <li><a href="#dropdown4" data-toggle="tab">@mdo</a></li>
                    </ul>
                </li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane fade in active" id="home1">
                    <p>Raw denim you probably haven't heard of them jean shorts Austin. </p>
                </div>
                <div class="tab-pane fade" id="profile1">
                    <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. </p>
                </div>
                <div class="tab-pane fade" id="dropdown3">
                    <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. </p>
                </div>
                <div class="tab-pane fade" id="dropdown4">
                    <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master.</p>
                </div>
            </div>
        </div>

    </div><!-- End .span6 -->

</div>
<script>
    $(document).ready(function() {
        $('#testingTabs').tabs();
    });
</script>
