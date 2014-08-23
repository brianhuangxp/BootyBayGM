define(['app', 'jqueryEislideshow'], function (app, jqueryEislideshow) {
    app.register.controller('HomeController', function ($http, $scope, routeResolver) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '厦门游互/首页',
            pageName: 'Home'
        });
        $scope.$emit('selectMenu', 'home');
        $scope.$on('$viewContentLoaded', function () {
            $('#ei-slider').eislideshow({
                animation: 'center',
                autoplay: true,
                slideshow_interval: 3000,
                titlesFactor: 0
            });
        });
    });
});

