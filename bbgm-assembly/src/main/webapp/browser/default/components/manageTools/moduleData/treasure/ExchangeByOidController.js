define(['app'], function (app) {
    app.register.controller('ExchangeByOidController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '指定ID兑换次数',
            pageName: 'ExchangeByOid'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DropListAndDateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true,
                codeType: 'G_EXCHANGE_TYPE',
                selectedTitle: '选择兑换项'
            }
        };
        $scope.dateFrequencyTable = {
            name: 'DateFrequencyTable',
            location: 'commonTable/',
            parameters: {
                header: {
                    amountLabel: '兑换次数'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/treasure.findTreasureExchangeByOid',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});