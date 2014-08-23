define(['app'], function (app) {
    app.register.controller('DailyOnlineController', function($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'天在线峰值',
            pageName:'DailyOnline'
        });
        $scope.$emit('switchBottomSearch', true);


        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };
        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/loginData/loginData.findDailyOnline',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.onlineList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});