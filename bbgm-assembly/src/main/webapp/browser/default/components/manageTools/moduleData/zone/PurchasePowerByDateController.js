define(['app'], function (app) {
    app.register.controller('PurchasePowerByDateController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '体力购买总次数',
            pageName: 'PurchasePowerByDate'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };
        $scope.dateFrequencyTable = {
            name: 'DateFrequencyTable',
            location: 'commonTable/'
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/zone.findPurchasePowerByDate',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});