define(['app'], function (app) {
    app.register.controller('ResourceDataByModuleController', function ($scope, ajaxService, $q) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '资源产出消耗分布',
            pageName: 'ResourceDataByModule'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'ResourceSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };

        $scope.dataList = [];
        $scope.total = 0;
        $scope.totalRecords = 0;
        $scope.currentPage = 0;
        $scope.pageSize = 500;
        $scope.tablePager = {
            name: 'TablePager',
            location: 'commonTable/'
        };
        $scope.$on('search', function (event, requestOption, option) {
            $q.all([
                    ajaxService.send({
                        url: 'json/manageTools/resourceData/resourceData.findResourceDataByModule',
                        requestData: requestOption
                    }) ,
                    ajaxService.getCodeMapping('ACTION_TYPE')
                ]).then(function (data) {
                    $scope.actionTypeMappings = data[1];
                    var sumEarning = 0;
                    var sumExpense = 0;
                    data[0].result = data[0].result || [];
                    data[0].result.forEach(function (d) {
                        sumEarning += d.earning;
                        sumExpense += d.expense;
                    });
                    data[0].result.forEach(function (d) {
                        d.sumEarning = sumEarning;
                        d.sumExpense = sumExpense;
                    });
                    $scope.dataList = data[0].result;
                    $scope.totalRecords = $scope.dataList.length;
                });
        });
    });
});