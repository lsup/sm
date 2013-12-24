<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div>
    <h1>Welcome</h1>
    this is the Welcome page!<br />
    <div class="span6">
        <div id="testingTabs">
            <ul>
                <li><a href="#tabs-1">Nunc tincidunt</a></li>
                <li><a href="#tabs-2">Proin dolor</a></li>
                <li><a href="#tabs-3">Aenean lacinia</a></li>
            </ul>
            <div id="tabs-1">
                <p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>
            </div>
            <div id="tabs-2">
                <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
            </div>
            <div id="tabs-3">
                <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
                <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
            </div>
        </div>

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
