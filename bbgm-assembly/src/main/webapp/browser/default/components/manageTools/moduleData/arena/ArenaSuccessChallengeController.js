define(['app'], function (app) {
    app.register.controller('ArenaSuccessChallengeController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '竞技胜利次数分布',
            pageName: 'ArenaSuccessChallenge'
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
            location: 'commonTable/'
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/arena.findArenaSuccessChallenge',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});