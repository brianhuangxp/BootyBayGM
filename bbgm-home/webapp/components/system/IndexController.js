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

        var hrefList = [];
        var hrefPrefix = config.isHtml5Mode ? "" : "#";
        hrefList.push(hrefPrefix + config.homePath);
        hrefList.push(hrefPrefix + 'company');
        hrefList.push(hrefPrefix + 'product');
        hrefList.push(hrefPrefix + 'invite');
        hrefList.push(hrefPrefix + 'contactMe');

        $scope.hrefList = hrefList;

        var routeArray = [
            {
                routePath: '/' + config.homePath,
                modulePath: 'home/',
                moduleName: 'Home',
                loadCss: true
            },
            {
                routePath: '/company',
                modulePath: 'company/',
                moduleName: 'Company',
                loadCss: true
            },
            {
                routePath: '/product',
                modulePath: 'product/',
                moduleName: 'Product',
                loadCss: true
            },
            {
                routePath: '/invite',
                modulePath: 'invite/',
                moduleName: 'Invite',
                loadCss: true
            },
            {
                routePath: '/contactMe',
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

