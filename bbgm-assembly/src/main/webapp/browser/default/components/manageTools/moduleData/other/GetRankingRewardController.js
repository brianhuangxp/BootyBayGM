define(['app'], function (app) {
    app.register.controller('GetRankingRewardController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '排名领奖次数',
            pageName: 'GetRankingReward'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/'
        };
        $scope.frequencyTable = {
            name: 'DateFrequencyTable',
            location: 'commonTable/'
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/other.findGetRankingReward',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});