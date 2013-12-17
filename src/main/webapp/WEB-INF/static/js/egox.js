$.tabs = {
    tabs: null,
    maxTabIndex : 1,
    /*自己创建tab时起始索引*/
    customTabStartIndex : 9999999999,
    /**初始化tab */
    initTab: function () {
        function activeMenu(tabPanelId) {
            var currentMenu = $("#menu-" + tabPanelId.replace("tabs-", ""));
            $("#menu .li-wrapper.active").removeClass("active");

            if(currentMenu.length) {
                //把父菜单展示出来
                currentMenu.parents("ul").each(function(){
                    //不能使用“ul:hidden” 因为它是把只有隐藏的都查出来
                    // 比如<ul style="display:none"><li><ul><li><a class='a'></a></li></ul></li></ul>
                    //$(".a").parents("ul:hidden") 会查出两个 即hidden的元素对其子也是有效的
                    if($(this).css("display") == 'none') {
                        $(this).prev("a").click();
                    }
                });
                currentMenu.closest(".li-wrapper").addClass("active");
            }
        }

        var tabs = $(".tabs-bar").tabs({
            beforeActivate : function(event, ui) {
                setTimeout(function() {
                    var tabs = $.tabs.tabs;
                    tabs.find(".menu").hide();
                    tabs.find("#" + ui.newPanel.attr("aria-labelledby")).siblings(".menu").show();
                }, 0);
            },
            activate: function (event, ui) {
                setTimeout(function() {
                    var tabs = $.tabs.tabs;
                    var newPanelId = ui.newPanel.prop("id");
                    activeMenu(newPanelId);
                    $.app.activeIframe(newPanelId);
                }, 0);
            }
        });
        $.tabs.tabs = tabs;
        tabs.delegate("span.icon-remove", "click", function () {
            var panelId = $(this).closest("li").remove().attr("aria-controls");
            setTimeout(function() {
                $.tabs.removeTab(panelId);
            }, 0);
        });
        tabs.delegate("span.icon-refresh", "click", function () {
            var panelId = $(this).closest("li").attr("aria-controls");
            setTimeout(function() {
                $.tabs.activeTab(panelId, null, null, true);
            }, 0);
        });

        tabs.bind("keyup", function (event) {
            if (event.altKey && event.keyCode === $.ui.keyCode.BACKSPACE) {
                var panelId = tabs.find(".ui-tabs-active").remove().attr("aria-controls");
                setTimeout(function() {
                    $.tabs.removeTab(panelId);
                }, 0);
            }
        });

        $.tabs.initTabScroll();
        $.tabs.initTabContextMenu();
    },
    removeTab : function(panelId) {
        var tabs = $.tabs.tabs;
        var panel = $("#" + panelId);
        var iframe = $("#iframe-" + panelId);

        var currentMenu = $("#menu-" + panelId.replace("tabs-", ""));
        if(currentMenu.length) {
            currentMenu.attr("id", "");
            currentMenu.attr("panelIndex", "");
            $("#menu .li-wrapper.active").removeClass("active");
        }

        tabs.tabs("option", "active", tabs.find(".ui-tabs-panel").size());
        tabs.tabs("refresh");

        panel.remove();
        var iframeDom = iframe[0];
        iframeDom.src = "";
        iframeDom.contentWindow.document.write('');
        iframeDom.contentWindow.close();
        iframe.remove();
        var isIE = !-[1,];
        if (isIE) {
            CollectGarbage();
        }

    },
    /**
     * 创建新的tab
     * @param title
     * @param panelIndex
     */
    /**
     * 创建新的tab
     * @param title
     * @param panelIndex
     */
    createTab : function(title, panelIndex) {
        var tabs = $.tabs.tabs;

        if(tabs.find(".ui-tabs-panel").length > 20) {
            $.app.alert({
                message : "您打开的面板太多，为提高系统运行速度，请先关闭一些！"
            });
            return;
        }


        var newPanelIndex = panelIndex || $.tabs.maxTabIndex++ || 1;
        var newPanelId = "tabs-" + newPanelIndex;
        var tabTemplate = "<li><a href='#{href}'>{label}</a> <span class='menu icon-remove' role='presentation'title='关闭'></span><br/><span class='menu icon-refresh' role='presentation' title='刷新'></span></li>";
        var li = $(tabTemplate.replace(/\{href\}/g, newPanelId).replace(/\{label\}/g, title));

        tabs.find("ul.ui-tabs-nav").append(li);
        tabs.append('<div id="' + newPanelId + '"></div>');

        tabs.tabs("refresh");

        var newPanel = $("#" + newPanelId);
        newPanel.data("index", newPanelIndex);

        return newPanel;
    },
    /**
     * 激活指定索引处的tab 如果没有就创建一个
     * @param panelIdOrIndex
     * @param title
     * @param url
     * @param forceRefresh
     * @return {*}
     */
    activeTab: function (panelIdOrIndex, title, url, forceRefresh, callback) {
        var tabs = $.tabs.tabs;
        if(panelIdOrIndex && ("" + panelIdOrIndex).indexOf("tabs-") == 0) {
            currentTabPanel = $("#" + panelIdOrIndex);
        } else {
            var currentTabPanel = $("#tabs-" + panelIdOrIndex);
        }

        if (!currentTabPanel.length) {
            currentTabPanel = $.tabs.createTab(title, panelIdOrIndex);
        }

        if(callback) {
            callback(currentTabPanel.data("index"));
        }

        if(!url) {
            url = currentTabPanel.data("url");
        }

        setTimeout(function() {
            $.app.loadingToCenterIframe(currentTabPanel, url, null, forceRefresh);
            tabs.tabs("option", "active", tabs.find(".ui-tabs-panel").index(currentTabPanel));
        }, 0);
        return currentTabPanel.data("index");
    },

    initTabScrollHideOrShowMoveBtn : function(panelId) {
        var $ulWrapper = $(".tabs-bar .ul-wrapper");
        var $lastLI = $ulWrapper.find("ul li:last");
        var $firstLI = $ulWrapper.find("ul li:first");

        var ulWapperOffsetLeft = $ulWrapper.offset().left;
        var ulWrapperLeftPos = ulWapperOffsetLeft + $ulWrapper.width();

        var hideOrShowBtn = function() {
            var lastLIOffsetLeft = $lastLI.offset().left;
            var lastLILeftPos = lastLIOffsetLeft + $lastLI.width();
            var firstLIOffsetLeft = $firstLI.offset().left;

            var $leftBtn = $(".tabs-bar .icon-chevron-left");
            var $rightBtn = $(".tabs-bar .icon-chevron-right");

            if (ulWapperOffsetLeft == firstLIOffsetLeft) {
                $leftBtn.hide();
            } else {
                $leftBtn.show();
            }
            if (ulWrapperLeftPos >= lastLILeftPos) {
                $rightBtn.hide();
            } else {
                $rightBtn.show();
            }
        };

        if(panelId) {

            var $li = $(".tabs-bar").find("li[aria-labelledby='" + $("#" + panelId).attr("aria-labelledby") + "']");

            var liOffsetLeft = $li.offset().left;
            var liLeftPos = liOffsetLeft + $li.width();

            var isLast = $li.attr("aria-controls") == $lastLI.attr("aria-controls");

            //如果当前tab没有隐藏 则不scroll
            if((ulWapperOffsetLeft <= liOffsetLeft) && (liLeftPos <= ulWrapperLeftPos) && !isLast) {
                return;
            }

            var leftPos = 0;
            //right
            if(ulWrapperLeftPos < liLeftPos || isLast) {
                leftPos = $ulWrapper.scrollLeft() + (liLeftPos - ulWrapperLeftPos) + (isLast ? 10 :55);
            } else {
                //left
                leftPos = "-=" + (ulWapperOffsetLeft - liOffsetLeft + 55);
            }

            $ulWrapper.animate({scrollLeft: leftPos}, 600, function () {
                hideOrShowBtn();
            });
        } else {
            hideOrShowBtn();
        }


    },
    initTabScroll: function () {
        var move = function (step) {
            return function () {
                var $ulWrapper = $(".tabs-bar .ul-wrapper");
                var $lastLI = $ulWrapper.find("ul li:last");

                var leftPos = $ulWrapper.scrollLeft() + step;

                var ulWrapperLeftPos = $ulWrapper.offset().left + $ulWrapper.width();
                var lastLILeftPos = $lastLI.offset().left + $lastLI.width();
                var maxLeftPos = lastLILeftPos - ulWrapperLeftPos;

                //right move
                if (step > 0) {
                    if (maxLeftPos <= step + step / 2) {
                        leftPos = $ulWrapper.scrollLeft() + maxLeftPos;
                    }
                    if (maxLeftPos <= 0) {
                        return;
                    }
                }

                //left move
                if (step < 0) {
                    if (leftPos < -step) {
                        leftPos = 0;
                    }
                }

                if (leftPos < 0) {
                    leftPos = 0;
                }
                $ulWrapper.animate({scrollLeft: leftPos}, 600, function () {
                    $.tabs.initTabScrollHideOrShowMoveBtn();
                });
            };
        };

        $(".tabs-bar .icon-chevron-left").click(function () {
            setTimeout(function() {move(-200)()}, 0);
        });
        $(".tabs-bar .icon-chevron-right").click(function () {
            setTimeout(function() {move(200)()}, 0);
        });

    },
    /**
     * 初始化上下文菜单（右键菜单）
     */
    initTabContextMenu : function() {
        //初始化右键菜单
        var tabsMenu = $("#tabs-menu");
        //调用这个方法后将禁止系统的右键菜单
        $(document).bind('contextmenu', function (e) {
            var target = $(e.target);
            var clickTab = target.closest(".tabs-bar").length && target.is(".ui-tabs-anchor");

            if (clickTab && target.attr("href") == '#tabs-0') {
                return true;
            }
            if (clickTab) {
                showMenu(target.attr("id"), e.pageX - 5, e.pageY - 5);
                tabsMenu.mouseleave(function () {
                    hideMenu();
                });
                return false;
            }
            return true;
        });

        function hideMenu() {
            tabsMenu.hide();
            tabsMenu.data("tabId", "");
        }

        function showMenu(tabId, x, y) {
            tabsMenu.data("tabId", tabId);
            tabsMenu.css("left", x).css("top", y);
            tabsMenu.show();
        }

        function closeTab(tabId) {
            $("#" + tabId).parent().find(".icon-remove").click();
        }
        tabsMenu.find(".close-current").click(function (e) {
            var currentTabId = tabsMenu.data("tabId");
            closeTab(currentTabId);
            hideMenu();
        });

        tabsMenu.find(".close-others").click(function (e) {
            var currentTabId = tabsMenu.data("tabId");
            var tabs = $.tabs.tabs.find(".ul-wrapper > ul > li > a");
            tabs.each(function() {
                var tabId = this.id;
                if(tabId != currentTabId) {
                    closeTab(tabId);
                }
            });
            hideMenu();
        });
        tabsMenu.find(".close-all").click(function (e) {
            var currentTabId = tabsMenu.data("tabId");
            var tabs = $.tabs.tabs.find(".ul-wrapper > ul > li > a");
            tabs.each(function() {
                var tabId = this.id;
                closeTab(tabId);
            });
            hideMenu();
        });

        tabsMenu.find(".close-left-all").click(function (e) {
            var currentTabId = tabsMenu.data("tabId");
            var tabs = $.tabs.tabs.find(".ul-wrapper > ul > li > a");
            var currentTabIndex = tabs.index($("#" + currentTabId));
            tabs.each(function(index) {
                if(index < currentTabIndex) {
                    var tabId = this.id;
                    closeTab(tabId);
                }
            });
            hideMenu();
        });
        tabsMenu.find(".close-right-all").click(function (e) {
            var currentTabId = tabsMenu.data("tabId");
            var tabs = $.tabs.tabs.find(".ul-wrapper > ul > li > a");
            var currentTabIndex = tabs.index($("#" + currentTabId));
            tabs.each(function(index) {
                if(index > currentTabIndex) {
                    var tabId = this.id;
                    closeTab(tabId);
                }
            });
            hideMenu();
        });
    },

    /**
     * 获取下一个自定义panel的索引
     */
    nextCustomTabIndex : function() {
        var tabs = $.tabs.tabs;
        var maxIndex = $.tabs.customTabStartIndex;
        tabs.find(".ui-tabs-panel").each(function() {
            var index = parseInt($(this).attr("id").replace("tabs-"));
            if(maxIndex < index) {
                maxIndex = index;
            }
        });

        return maxIndex + 1;

    }
};