define(['app'], function (app) {
    app.register.controller('TotalRechargeController', function($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'充值总金额分布',
            pageName:'TotalRecharge'
        });
        $scope.$emit('switchBottomSearch', true);
        $scope.dataList = [];

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
                    frequencyLabel: '金额',
                    amountLabel: '玩家数'
                },
                frequencyFilter: 'currency'
            }
        };
        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/rechargeData/rechargeData.findTotalRecharge',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});