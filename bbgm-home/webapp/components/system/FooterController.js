define(['app'], function (app) {
    app.register.controller('FooterController', function ($http, $scope, uiFlow, windowUtils, $q) {
        $scope.year= new Date().getFullYear();
    });
});

