define(['app'], function (app) {
    app.register.controller('OverviewController', function ($scope, routeResolver) {
//    routeResolver.loadCss('overview/overview.css');
//    $scope.$emit('pageHeaderTitleChange', {
//            title:'Login',
//            pageName:'Overview'
//    });
        $scope.$emit('switchBottomSearch', false);
    });
});