define(['app'], function (app) {
    app.register.controller('FirstlyChargeAndLevelController', function($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'首充等级分布',
            pageName:'FirstlyChargeAndLevel'
        });
        $scope.$emit('switchBottomSearch', true);
        $scope.searchPanel = {
            name: 'DateSearchPanel',
            loadJs: true,
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
                    frequencyLabel: '等级',
                    amountLabel: '玩家数'
                }
            }
        };
        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/rechargeData/rechargeData.findFirstlyChargeAndLevel',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});