$.egox = {
    ui: {
        test: {
            testAll : function() {
                this.testMessager();
            },
            testMessager: function() {
                $.egox.ui.messager.notice("测试一下，会自动隐藏。");
                $.egox.ui.messager.notice("测试一下,不会自动隐藏。", true);
                $.egox.ui.messager.info("测试一下，会自动隐藏。");
                $.egox.ui.messager.info("测试一下,不会自动隐藏。", true);
                $.egox.ui.messager.success("测试一下，会自动隐藏。");
                $.egox.ui.messager.success("测试一下,不会自动隐藏。", true);
                $.egox.ui.messager.error("测试一下，会自动隐藏。");
                $.egox.ui.messager.error("测试一下,不会自动隐藏。", true);
            }
        },
        loading: function () {
            $("#qLoverlay").fadeIn(250);
            $("#qLbar").fadeIn(250);
        },
        loaded: function () {
            //remove overlay and show page
            $("#qLoverlay").fadeOut(250);
            $("#qLbar").fadeOut(250);
        },
        messager: {
            notice: function(msg, isSticky) {
                $.pnotify({
                    title: '警告',
                    text: msg,
                    hide: isSticky ? isSticky : false,
                    icon: 'picon icon16 entypo-icon-warning dark',
                    opacity: 0.95,
                    history: false,
                    sticker: false
                });
            },
            info : function (msg, isSticky) {
                $.pnotify({
                    type: 'info',
                    title: '提示',
                    text: msg,
                    icon: 'picon icon16 brocco-icon-info dark',
                    hide: isSticky ? isSticky : false,
                    opacity: 0.95,
                    history: false,
                    sticker: false
                });
            },
            success : function(msg, isSticky) {
                $.pnotify({
                    type: 'success',
                    title: '成功',
                    text: msg,
                    icon: 'picon icon16 iconic-icon-check-alt dark',
                    opacity: 0.95,
                    hide: isSticky ? isSticky : false,
                    history: false,
                    sticker: false
                });
            },
            error: function(msg, isSticky) {
                $.pnotify({
                    type: 'error',
                    title: '错误！',
                    text: msg,
                    icon: 'picon icon24 typ-icon-cancel dark',
                    opacity: 0.95,
                    hide: isSticky ? isSticky : false,
                    history: false,
                    sticker: false
                });
            }
        },
        tabs: {
            _defaultOptions : {
                closable: true,
                refreshable: true
            },
            $tabs: null,
            init: function () {
                this.$tabs = $('#tabContainer').tabs({
                    border:false,
                    tabHeight: 39,
                    fit: true
                });
                var tabs = this.$tabs;
                tabs.tabs('add',{
                    title:'Welcome',
                    href:'welcome',
                    closable:false
                });
                $.egox.ui.loaded();
            },
            openTab: function (title, href) {
                if (title instanceof Object) {
                    this._createTab(title);
                } else {
                    this._createTab({
                        title: title,
                        href: href
                    })
                }

            },
            _createTab: function (options) {
                var mergedOptions = $.extend(this._defaultOptions, options);
                if (!mergedOptions.title || !mergedOptions.href) {
                    alert("failed to create the tab, the title and the href are required.");
                    return;
                }
                var tabs = this.$tabs;
                tabs.tabs('add',{
                    title:mergedOptions.title,
                    href:mergedOptions.href,
                    cache: true,
                    method: 'GET',
                    closable:mergedOptions.closable,
                    tools:mergedOptions.refreshable ? [{
                        iconCls:'icon-refresh',
                        handler:function(){
                            setTimeout(function() {
//                                var selectedTab = tabs.tabs('getSelected');
//                                selectedTab.panel('refresh', selectedTab.panel('options').href);
                                tabs.tabs('getSelected').panel('refresh');
                            }, 0);
                        }
                    }]: null
                });
            }
        }
    }
}