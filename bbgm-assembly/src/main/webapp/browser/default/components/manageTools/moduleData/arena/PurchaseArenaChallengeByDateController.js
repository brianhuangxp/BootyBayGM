define(['app'], function (app) {
    app.register.controller('PurchaseArenaChallengeByDateController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '竞技购买次数',
            pageName: 'PurchaseArenaChallengeByDate'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };
        $scope.dateFrequencyTable = {
            name: 'DateFrequencyTable',
            location: 'commonTable/',
            parameters: {
                amountLabel: '购买次数'
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/arena.findPurchaseArenaChallengeByDate',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});