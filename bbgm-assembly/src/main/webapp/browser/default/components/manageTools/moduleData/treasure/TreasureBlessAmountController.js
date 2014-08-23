define(['app'], function (app) {
    app.register.controller('TreasureBlessAmountController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '祝福次数分布',
            pageName: 'TreasureBlessAmount'
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
            location: 'commonTable/',
            parameters: {
                header: {
                    frequencyLabel: '祝福次数'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/treasure.findTreasureBlessAmount',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});