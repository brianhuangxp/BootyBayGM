define(['app'], function (app) {
    app.register.controller('SingleRechargeController', function($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'单笔充值金额分布',
            pageName:'SingleRecharge'
        });
        $scope.$emit('switchBottomSearch', true);


        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };
        $scope.dataList = [];
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
                url: 'json/manageTools/rechargeData/rechargeData.findSingleRecharge',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});