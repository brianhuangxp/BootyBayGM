define(['app'], function (app) {
    app.register.controller('PlayerPrivilegeController', function ($scope, ajaxService, $q) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '特权购买次数',
            pageName: 'PlayerPrivilege'
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
            $q.all([
                    ajaxService.send({
                        url: 'json/manageTools/rechargeData/rechargeData.findPlayerPrivilege',
                        requestData: requestOption
                    }) ,
                    ajaxService.getCodeMapping('serversMappings')
                ]).then(function (data) {
                    $scope.serverMappings = data[1];
                    $scope.dataList = data[0].result || [];
                    $scope.totalRecords = $scope.dataList.length;
                });
        });
    });
});