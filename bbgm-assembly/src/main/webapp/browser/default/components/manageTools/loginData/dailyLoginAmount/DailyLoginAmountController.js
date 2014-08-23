define(['app'], function (app) {
    app.register.controller('DailyLoginAmountController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '天登录次数',
            pageName: 'DailyLoginAmount'
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
                    frequencyLabel: '登录次数',
                    amountLabel: '玩家数量'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/loginData/loginData.findDailyLoginAmount',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});