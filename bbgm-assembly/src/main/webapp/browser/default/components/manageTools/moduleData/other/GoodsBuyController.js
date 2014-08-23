define(['app'], function (app) {
    app.register.controller('GoodsBuyController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '商店购买次数',
            pageName: 'GoodsBuy'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/'
        };
        $scope.frequencyTable = {
            name: 'DateFrequencyTable',
            location: 'commonTable/'
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/other.findGoodsBuy',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});