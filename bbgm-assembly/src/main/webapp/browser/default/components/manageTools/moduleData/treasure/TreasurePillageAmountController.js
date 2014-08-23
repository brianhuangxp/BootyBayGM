define(['app'], function (app) {
    app.register.controller('TreasurePillageAmountController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '宝藏掠夺次数分布',
            pageName: 'TreasurePillageAmount'
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
                    frequencyLabel: '掠夺次数'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/treasure.findTreasurePillageAmount',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});