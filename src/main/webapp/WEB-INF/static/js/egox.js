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
            activeTab: function (id) {
            },
            openTab: function () {

            },
            closeTab: function () {

            },
            refreshTab: function () {

            },
            createTab: function (title, href) {
                var tabs = this.$tabs;
                tabs.tabs('add',{
                    title:title,
                    href:href,
                    cache: true,
                    method: 'GET',
                    closable:true,
                    tools:[{
                        iconCls:'icon-refresh',
                        handler:function(){
                            tabs.tabs('getSelected').panel('refresh', href);
                        }
                    }]
                });
            }
        }
    }
}