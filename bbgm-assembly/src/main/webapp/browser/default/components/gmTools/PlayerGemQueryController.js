define(['app'], function (app) {
    app.register.controller('PlayerGemQueryController', function ($scope, ajaxService, $q) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '钻石查询',
            pageName: 'PlayerGemQuery'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'PlayerSearchPanel',
            location: 'searchPanel/'
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
                        url: 'json/gmTools/playerQuery/playerQuery.queryPlayerGem',
                        requestData: requestOption
                    }) ,
                    ajaxService.getCodeMapping('serversMappings'),
                    ajaxService.getCodeMapping('ACTION_TYPE')
                ]).then(function (data) {
                    $scope.serverMappings = data[1];
                    $scope.actionTypeMappings = data[2];
                    $scope.dataList = data[0].result || [];
                    $scope.totalRecords = $scope.dataList.length;
                });
        });
    });
});