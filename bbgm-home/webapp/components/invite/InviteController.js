define(['app'], function (app) {
    app.register.controller('InviteController', function ($http, $scope, routeResolver) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '厦门游互/人才招聘',
            pageName: 'Invite'
        });
        $scope.$emit('selectMenu', 'invite');
        $('#pageContainer').addClass("pageContainer-invite");
    });
});

