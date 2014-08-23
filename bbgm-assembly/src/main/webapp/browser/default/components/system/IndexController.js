define(['app','config'], function (app, config) {
    app.register.controller('IndexController', function ($http, $scope, routeResolver, componentOptions, $location, $route, ajaxService, $log, $rootScope) {
        if (!$rootScope.loadUserConfig) {
            routeResolver.loadJs('system/userConfig.js', function (data) {
                $scope.userNickName = RC.Config.userNickName;
                indexInit();
            });
        } else {
            indexInit();
        }

        function indexInit() {
            $scope.Logout = function () {
                ajaxService.send({
                    url: 'system/system.logout'
                }).then(function (data, status, headers, config) {
                        $scope.$emit('logOut', $scope);
                    }, function (data, status, headers, config) {
                        $scope.$emit('logOut', $scope);
                    }
                );
            };
            $scope.showBottomSearch = false;
            $scope.serverSearchPanel = {
                name: 'ServerSearchPanel',
                location: 'searchPanel/',
                loadCss: true
            };
            $scope.$on('switchBottomSearch', function (event, show) {
                $('#index-container').css('height', show ? '90%' : '100%');
                $scope.showBottomSearch = show;
            });

            $scope.$on('afterSelect', function (event, pageInfo) {
                $scope.$parent.$broadcast('pageHeaderTitleChange', pageInfo);
            });
            $scope.menuList = [];

            getMenuList($scope, app.register.setRouters);

            function getMenuList(scope, setRouters) {
                ajaxService.send({
                    url: 'system/system.findMenuList',
                    method: 'get',
                    isServerSearch: false
                }).then(function (data, status, headers, config) {
                        if (data.status.statusCode == 1) {
                            var menuList = data.result ? data.result : [];
                            var routeArray = getRouteArray(menuList);
                            setRouters(routeArray);
                            $route.reload();
                            var menuItems = getMenuItems(menuList);
                            scope.treeList = getMenuNode(menuItems).children;
                        } else if (data.status.statusCode == 0) {

                        }
                    }, function (data, status, headers, config) {
                        alert(status);
                    }
                );
            }

            function getRouteArray(menuList) {
                var routeArray = [];
                var idArray = [];
                menuList.forEach(function (r) {
                    if (!angular.isUndefined(r.routeId) && r.routeId != null && idArray.indexOf(r.routeId) == -1) {
                        idArray.push(r.routeId);
//                        var routePath = config.isHtml5Mode ? "/" + config.appPath + r.routePath : r.routePath;
//                        var modulePath = config.isHtml5Mode ? config.appPath + "/" + r.modulePath : r.modulePath;
                        routeArray.push({
                            routeId: r.routeId,
                            routePath: r.routePath,
                            moduleName: r.moduleName,
                            modulePath: r.modulePath,
                            loadCss: r.loadCss == "1"
                        })
                    }
                    ;
                });
                return routeArray;
            }

            function getMenuItems(menuList) {
                var menuItems = [];
                var hash = $location.$$url;
                //console.log(hash);
                menuList.forEach(function (item) {
                    var treeItem = {
                        menuId: "menuId" + item.menuId,
                        title: item.menuName,
                        href: config.isHtml5Mode ? "/" + config.appPath + item.menuUrl : item.menuUrl,
                        parentId: item.parentId != -1 ? "menuId" + item.parentId : item.parentId
                    };
                    if (hash == item.menuUrl) {
                        treeItem.activate = true
                    }
                    //console.log(treeItem);
                    menuItems.push(treeItem)
                });
                return menuItems;
            }

            function getMenuNode(menuItems) {
                var obj = {};
                obj.rootElements = [];
                var currentRoot, currentParent, s;
                for (s in menuItems) {
                    var t = menuItems[s];
                    var id = t.menuId;
                    if (t.parentId != -1) {
                        var parentId = t.parentId;
                        if (parentId == currentParent.menuId) {
                            //add children
                            if (!currentParent.children) {
                                currentParent.children = [];
                            }
                            currentParent.children.push(t);
                        } else {
                            addChildToParent(t, parentId);
                        }
                    } else {
                        // is root
                        currentRoot = t;
                        currentParent = t;
                        obj.rootElements.push(currentRoot);
                    }
                }

                return currentRoot ? currentRoot : [];

                function addChildToParent(child, parentId, root) {
                    var p;
                    for (p in menuItems) {
                        if (menuItems[p].menuId.toString() == parentId.toString()) {
                            if (!menuItems[p].children) {
                                menuItems[p].children = [];
                            }
                            menuItems[p].children.push(t);
                        }
                    }
                }
            }
        }

    });
});

/*RC.utils.quickResetCodeTable = function () {
    var $http = angular.injector(['ng']).get("$http");
    $http({
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
            url: 'system/system.resetCodeTable',
            method: "POST"
        }
    ).success(function (data, status, headers, config) {
            console.log(data)
        }
    ).error(function (data, status, headers, config) {
            alert(status);
        }
    );
};

RC.utils.logout = function () {
    var $http = angular.injector(['ng']).get("$http");
    $http({
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
            url: 'system/system.logout',
            method: "POST"
        }
    ).success(function (data, status, headers, config) {
            console.log(data)
        }
    ).error(function (data, status, headers, config) {
            alert(status);
        }
    );
};

RC.utils.execDailyProcedure = function () {
    var $http = angular.injector(['ng']).get("$http");
    $http({
            headers: {'Content-Type': 'application/x-www-form-urlencoded'},
            url: 'system/system.execDailyProcedure',
            method: "POST"
        }
    ).success(function (data, status, headers, config) {
            console.log(data)
        }
    ).error(function (data, status, headers, config) {
            alert(status);
        }
    );
};*/
