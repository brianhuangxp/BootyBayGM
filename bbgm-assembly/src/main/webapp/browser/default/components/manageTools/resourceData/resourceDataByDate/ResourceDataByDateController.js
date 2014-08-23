define(['app'], function (app) {
    app.register.controller('ResourceDataByDateController', function($scope, ajaxService, $rootScope) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'资源总产出消耗',
            pageName:'ResourceDataByDate'
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
            ajaxService.send({
                url: 'json/manageTools/resourceData/resourceData.findResourceDataByDate',
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