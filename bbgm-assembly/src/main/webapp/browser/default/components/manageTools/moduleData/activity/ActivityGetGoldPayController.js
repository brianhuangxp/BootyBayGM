define(['app'], function (app) {
    app.register.controller('ActivityGetGoldPayController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '领取军饷次数',
            pageName: 'ActivityGetGoldPay'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };
        $scope.frequencyTable = {
            name: 'FrequencyTable',
            location: 'commonTable/'
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/activity.findActivityGetGoldPay',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});