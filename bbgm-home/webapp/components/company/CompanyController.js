define(['app'], function (app) {
    app.register.controller('CompanyController', function ($http, $scope, routeResolver) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '厦门游互/公司简介',
            pageName: 'Company'
        });
        $scope.$emit('selectMenu', 'company');
        sayRun();
        setInterval(sayRun, 3000);

        function sayRun(){
            var say1 = $('#say1');
            var say2 = $('#say2');
            say1.animate({
                top:'-30px'
            }, 1500 );
            say2.animate({
                top:'30px'
            }, 1500 );
            say1.animate({
                top:'30px'
            }, 1500 );
            say2.animate({
                top:'-30px'
            }, 1500 );
        }
    });
});

