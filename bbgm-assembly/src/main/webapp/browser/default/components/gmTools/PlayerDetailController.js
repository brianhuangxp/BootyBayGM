define(['app'], function (app) {
    app.register.controller('PlayerDetailController', function ($scope, ajaxService, windowUtils, $q) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '详细信息',
            pageName: 'PlayerDetail'
        });
        $scope.$emit('switchBottomSearch', true);


        $scope.searchPanel = {
            name: 'PlayerSearchPanel',
            location: 'searchPanel/'
        };

        $scope.$on('search', function (event, requestOption, option) {
            if (ajaxService.getData('provider').value == -1 || ajaxService.getData('server').value == -1) {
                windowUtils.alterWindow("请选择所属服务器！");
                return;
            }
            $q.all([
                    ajaxService.send({
                        url: 'json/gmTools/playerQuery/playerQuery.queryPlayerDetail',
                        requestData: requestOption
                    }) ,
                    ajaxService.getCodeMapping('G_ITEM_RANK_TYPE'),
                    ajaxService.getCodeMapping('G_EQUIP_RANK_TYPE')
                ]).then(function (data) {
                    $scope.itemRankMappings = data[1];
                    $scope.equipRankMappings = data[2];
                    $scope.playerDetail = data[0].result || [];
                });
        });
    });
});