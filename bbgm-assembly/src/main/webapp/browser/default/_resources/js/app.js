// todo split pieces of files
define(['jquery', 'angular',  'config', 'require', 'angular-route', 'angular-cookies', 'angular-sanitize',
    'angular-locale_zh', 'angular-extend', 'jqueryUI'], function (jquery, angular, config, require) {

    var app = angular.module(config.appName, ['angularExtend', 'pasvaz.bindonce', 'ngCookies']);
    app.config(function ($routeProvider, routeResolverProvider, $controllerProvider, $compileProvider, $filterProvider, $provide, $locationProvider) {
        $provide.decorator('$log', function ($delegate) {
            logHandler($delegate, 'debug');
            logHandler($delegate, 'log');
            return $delegate;

            function logHandler($delegate, method) {
                var fn;
                if (angular.isFunction($delegate[method])) {
                    fn = $delegate[method];

                    $delegate[method] = function () {
                        var commonService = angular.injector(['angularExtend']).get('commonService');
                        if (commonService.isEnableLogDebug()) {
                            fn.apply($delegate, arguments);
                        }
                    }
                }
            }
        });

        $provide.decorator('$http', function ($delegate) {
            //logHandler($delegate, 'get');
            return $delegate;

            function logHandler($delegate, method) {
                var fn;
                if (angular.isFunction($delegate[method])) {
                    fn = $delegate[method];

                    $delegate[method] = function () {
                        var commonService = angular.injector(['angularExtend']).get('commonService');
                        console.log('get:[' + arguments + "]");
                        fn.apply($delegate, arguments);
                    }
                }
            }
        });

        $provide.decorator('$locale', function ($delegate) {
            $delegate['DATETIME_FORMATS']["medium"] = "yyyy/MM/dd ah:mm:ss";
            $delegate['DATETIME_FORMATS']["mediumDate"] = "yyyy/MM/dd";
            $delegate['DATETIME_FORMATS']["short"] = "yy/MM/d ah:mm";
            $delegate['DATETIME_FORMATS']["shortDate"] = "yy/MM/d";
            return $delegate;
        });

        // TODO  with html5Mode
        $locationProvider.html5Mode(config.isHtml5Mode);
        var routeConfig = routeResolverProvider.routeConfig;

        routeConfig.setBaseDirectory("components/", "components/");

        app.register = {
            controller: $controllerProvider.register,
            directive: $compileProvider.directive,
            filter: $filterProvider.register,
            factory: $provide.factory,
            service: $provide.service,
            setRouters: (function (routeProvider, routeResolve) {
                return setRouters;
                function setRouters(routeArray) {
                    routeArray.forEach(function (r) {
                        var routePath = config.isHtml5Mode ? "/" + config.appPath + r.routePath : r.routePath;
                        routeProvider.when(routePath, routeResolve(r.moduleName, r.modulePath, r.loadCss))
                    });
                    routeProvider.otherwise({
                        redirectTo: config.isHtml5Mode ? "/" + config.appPath : "/"
                    });
                }
            })($routeProvider, routeResolverProvider.route.resolve)
        };
    });

    app.controller('MainController', function ($scope, routeResolver, $compile, $cookieStore, $location, $rootScope, loader) {
        loader.show();
        $scope.$on('pageHeaderTitleChange', function (event, pageInfo) {
            $scope.pageHeaderTitle = pageInfo.title;
            $scope.isOverview = (pageInfo.pageName == 'Overview');
        });
        var appMain = $('#app-main');
        var login = {
            name: 'Login',
            location: 'system/'
        };
        var index = {
            name: 'Index',
            location: 'system/'
        }
//        var index = {
//            name: 'Test',
//            location: 'uiTest/'
//        }
//        var index = {
//            name: 'TestUserFlow',
//            location: 'uiTest/userFlow/'
//        }
        var mainContentStr = '<div rc-component="checkLogin" class="fill-width-height"></div>';

        $rootScope.$on('login', function (event, user, scope) {
            routeResolver.loadJs('system/userConfig.js', function (data) {
                $rootScope.loadUserConfig = true;
                scope.$$phase ? login() : scope.$apply(login);

                function login(){
                    scope.$destroy();
                    $cookieStore.put('su', user);
                    switchPage(user);
                    $location.path(config.isHtml5Mode ? config.appPath + "/" : "/");
                }
            });
        });
        $rootScope.$on('logOut', function (event, scope) {
            scope.$destroy();
            $cookieStore.remove('su');
            switchPage();
            $location.path(config.isHtml5Mode ? config.appPath + "/logout" : "/logout");
        });

        switchPage();
        loader.hide();

        function switchPage(user) {
            var scope = $scope.$new();
            scope.checkLogin = user || $cookieStore.get('su') ? index : login;
            appMain.html($compile(mainContentStr)(scope));
        }
    });

    return app;
});

