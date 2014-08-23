define(['app'], function (app) {
    app.register.controller('TreasureVictorTimeController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '胜利时间',
            pageName: 'TreasureVictorTime'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };

        $scope.totalRecords = 0;
        $scope.currentPage = 0;
        $scope.pageSize = 500;
        $scope.tablePager = {
            name: 'TablePager',
            location: 'commonTable/'
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/treasure.findTreasureVictorTime',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                    $scope.totalRecords = $scope.dataList.length;
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});