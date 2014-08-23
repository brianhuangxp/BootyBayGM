define(['app'], function (app) {
    app.register.controller('AccountInterveneController', function ($scope, ajaxService, windowUtils, dateFilter, $q) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '封号处理',
            pageName: 'AccountIntervene'
        });
        $scope.$emit('switchBottomSearch', false);

//        $scope.showBottomSearch = true;
        $scope.serverSearchPanel = {
            name: 'ServerSearchPanel',
            location: 'searchPanel/',
            loadCss: true,
            parameters: {
                providerTopLabel: '选择供应商',
                serverTopLabel: '选择服务器',
                searchPanelStyle: {
                    position: 'static'
                }
            }
        };
        $scope.endDateOptions = {};
        $scope.dataList = [];
        $scope.total = 0;
        $scope.totalRecords = 0;
        $scope.currentPage = 0;
        $scope.pageSize = 500;
        $scope.tablePager = {
            name: 'TablePager',
            location: 'commonTable/'
        };

        $scope.frozen = function () {
            if (ajaxService.getData('provider').value == -1 || ajaxService.getData('server').value == -1) {
                windowUtils.alterWindow("请选择所属服务器！");
                return;
            }
            if(!$scope.playerName){
                windowUtils.alterWindow("请输入玩家名称");
                return;
            }
            if(!$scope.cause){
                windowUtils.alterWindow("请输入封号原因");
                return;
            }
            if(!$scope.endDate){
                windowUtils.alterWindow("请选择结束时间");
                return;
            }
            ajaxService.send({
                url: 'json/gmTools/intervene/intervene.frozenAccount',
                requestData: {
                    endDate: dateFilter($scope.endDate, RC.Config.dateFormat),
                    players: $scope.playerName,
                    cause: $scope.cause
                }
            }).then(function (data, status, headers, config) {
                    windowUtils.alterWindow(data.result.alertMsg, null, $scope.queryFrozenPlayer);
                }, function (data, status, headers, config) {
                    //windowUtils.alterWindow(data.result.alertMsg);
                }
            );
        }

        $scope.queryFrozenPlayer = function () {
            $q.all([
                    ajaxService.send({
                        url: 'json/gmTools/intervene/intervene.findFrozenPlayers'
                    }) ,
                    ajaxService.getCodeMapping('serversMappings')
                ]).then(function (data) {
                    $scope.serverMappings = data[1];
                    $scope.dataList = data[0].result || [];
                    $scope.totalRecords = $scope.dataList.length;
                });
        };

        $scope.dispel = function(serverId, piId, playerId){
//            console.log(serverId)
            ajaxService.send({
                url: 'json/gmTools/intervene/intervene.dispellingFrozen',
                requestData: {
                    serverId: serverId,
                    piId: piId,
                    playerId: playerId
                },
                isServerSearch: false
            }).then(function (data, status, headers, config) {
                    windowUtils.alterWindow(data.result.alertMsg, null, $scope.queryFrozenPlayer);
                }, function (data, status, headers, config) {
                    windowUtils.alterWindow(data.result.alertMsg);
                }
            );

        }
        $scope.queryFrozenPlayer();
    });
});