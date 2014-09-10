// todo split pieces of files
define(['jquery', 'angular', 'config', 'require', 'angular-route', 'angular-cookies', 'angular-sanitize',
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
                        var routePath = config.isHtml5Mode ? config.appPath + r.routePath : r.routePath;
                        routeProvider.when(routePath, routeResolve(r.moduleName, r.modulePath, r.loadCss))
                    });
                    routeProvider.otherwise({
                        redirectTo: config.isHtml5Mode ? config.appPath + '/' + config.homePath : config.homePath
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
        $scope.index = {
            name: 'Index',
            location: 'system/',
            loadCss: true        }
        var mainContentStr = '<div rc-component="index" class="fill-width-height"></div>';
        appMain.html($compile(mainContentStr)($scope));
        loader.hide();
    });

    return app;
});