define(['app'], function (app) {
    app.register.controller('HourlyOnlineController', function($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'小时在线峰值',
            pageName:'HourlyOnline'
        });
        $scope.$emit('switchBottomSearch', true);


        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isDateRange: false,
                isAutoSearch: true
            }
        };
        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/loginData/loginData.findHourlyOnline',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.onlineList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});