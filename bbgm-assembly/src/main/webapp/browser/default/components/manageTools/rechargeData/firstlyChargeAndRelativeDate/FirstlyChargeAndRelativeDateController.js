define(['app'], function (app) {
    app.register.controller('FirstlyChargeAndRelativeDateController', function($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'首充天数分布',
            pageName:'FirstlyChargeAndRelativeDate'
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
                    frequencyLabel: '天数',
                    amountLabel: '玩家数'
                }
            }
        };
        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/rechargeData/rechargeData.findFirstlyChargeAndRelativeDate',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});