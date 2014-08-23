define(['app'], function (app) {
    app.register.controller('FirstlyChargeAndAmountController', function($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'充值次数分布',
            pageName:'FirstlyChargeAndAmount'
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
                    amountLabel: '玩家数'
                }
            }
        };
        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/rechargeData/rechargeData.findFirstlyChargeAndAmount',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});