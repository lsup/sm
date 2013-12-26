$.egox = {
    ui: {
        loading: function () {
            $("#qLoverlay").fadeIn(250);
            $("#qLbar").fadeIn(250);
        },
        loaded: function () {
            //remove overlay and show page
            $("#qLoverlay").fadeOut(250);
            $("#qLbar").fadeOut(250);
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