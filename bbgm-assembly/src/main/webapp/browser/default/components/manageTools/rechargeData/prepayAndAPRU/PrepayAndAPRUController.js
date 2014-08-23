define(['app'], function (app) {
    app.register.controller('PrepayAndAPRUController', function($scope, routeResolver, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'充值率及APRU值',
            pageName:'PrepayAndAPRU'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
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
            ajaxService.send({
                url: 'json/manageTools/rechargeData/rechargeData.findPrepayAndAPRU',
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