define(['app'], function (app) {
    app.register.controller('ArenaConsecutiveChallengeController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '竞技连胜次数分布',
            pageName: 'ArenaConsecutiveChallenge'
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
                url: 'json/manageTools/moduleData/arena.findArenaConsecutive',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});