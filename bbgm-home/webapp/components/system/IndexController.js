var RC = {};
RC.Config = {};
RC.Config.dateFormat = 'MM-dd-YYYY';
define(['config', 'app'], function (config, app) {
    app.register.controller('IndexController', function ($http, $scope, $route) {
//        $scope.friendLink = 'components/system/FriendLink.html';
        $scope.footer = {
            name: 'Footer',
            location: 'system/'
        };
        var routeArray = [
            {
                routePath: config.appPath + '/home',
                modulePath: 'home/',
                moduleName: 'Home',
                loadCss: true
            },
            {
                routePath: config.appPath + '/company',
                modulePath: 'company/',
                moduleName: 'Company',
                loadCss: true
            },
            {
                routePath: config.appPath + '/product',
                modulePath: 'product/',
                moduleName: 'Product',
                loadCss: true
            },
            {
                routePath: config.appPath + '/invite',
                modulePath: 'invite/',
                moduleName: 'Invite',
                loadCss: true
            },
            {
                routePath: config.appPath + '/contactMe',
                modulePath: 'contactMe/',
                moduleName: 'ContactMe',
                loadCss: true
            }
        ];
        app.register.setRouters(routeArray);
        $route.reload();
        $scope.$on('selectMenu', function (e, module) {
            clearHover();
            $scope[module + 'Class'] = 'cur';

            function clearHover() {
                $scope.homeClass = '';
                $scope.companyClass = '';
                $scope.productClass = '';
                $scope.inviteClass = '';
                $scope.contactMeClass = '';
            }
        })
    });
});

