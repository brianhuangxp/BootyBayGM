define(['app'], function (app) {
    app.register.controller('TreasureBlessTimeController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '祝福时间',
            pageName: 'TreasureBlessTime'
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
                url: 'json/manageTools/moduleData/treasure.findTreasureBlessTime',
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