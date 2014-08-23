define(['app'], function (app) {
    app.register.controller('DateFrequencyTableController', function ($scope, routeResolver, componentOptions) {
        var parameters = componentOptions.parameters;
        $scope.header = parameters.header || {};
        $scope.header.reportTimeLabel = $scope.header.reportTimeLabel || '日期';
        $scope.header.amountLabel = $scope.header.amountLabel || '次数';
        $scope.recordTimeFilter = parameters.recordTimeFilter || 'date';
        $scope.amountFilter = parameters.amountFilter || 'number';
        $scope.$watch('dataList', function (dataList) {
            if (!dataList) {
                dataList = [];
                return;
            }
            $scope.totalRecords = dataList.length;
        });

        $scope.totalRecords = 0;
        $scope.currentPage = 0;
        $scope.pageSize = 500;
        $scope.tablePager = {
            name: 'TablePager',
            location: 'commonTable/'
        };

    });
});