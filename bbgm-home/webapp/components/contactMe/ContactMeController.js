define(['app'], function (app) {
    app.register.controller('ContactMeController', function ($http, $scope, routeResolver) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '厦门游互/联系我们',
            pageName: 'ContactMe'
        });
        $scope.$emit('selectMenu', 'contactMe');
    });
});

