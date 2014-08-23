define(['app'], function (app) {
    app.register.controller('FrequencyTableController', function ($scope, routeResolver, componentOptions) {
        var parameters = componentOptions.parameters;
        $scope.header = parameters.header || {};
        $scope.header.frequencyLabel = $scope.header.frequencyLabel || '次数';
        $scope.header.amountLabel = $scope.header.amountLabel || '人次';
        $scope.header.ratioLabel = $scope.header.ratioLabel || '比例';
        $scope.frequencyFilter = parameters.frequencyFilter || 'number';
        $scope.amountFilter = parameters.amountFilter || 'number';
        $scope.$watch('dataList', function (dataList) {
            if (!dataList) {
                dataList = [];
                return;
            }
            var sumAmount = 0;
            dataList.forEach(function (data) {
                sumAmount += data.amount;
            });
            dataList.forEach(function (data) {
                data.sumAmount = sumAmount;
            });
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