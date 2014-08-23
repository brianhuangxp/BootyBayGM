define(['app'], function (app) {
    app.register.controller('RankingDataController', function ($scope, ajaxService, $q) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '玩家排名',
            pageName: 'RankingData'
        });
        $scope.$emit('switchBottomSearch', true);
        $scope.searchPanel = {
            name: 'ChargeRecordsSearchPanel',
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
        $scope.orderColumn = '';
        var dataList = [];
        hideAllLastColumn();
        $scope.orderByPrepay = function () {
            switchProviderOrServer(function () {
                $scope.orderColumn = '-playerPrepay';
                $scope.showPlayerPrepay = true;
            });
        };
        $scope.orderByLevel = function () {
            switchProviderOrServer(function () {
                $scope.orderColumn = ['-playerLevel', '-playerExp'];
                $scope.showPlayerLevel = true;
            });
        };
        $scope.orderByGem = function () {
            switchProviderOrServer(function () {
                $scope.showPlayerGem = true;
                $scope.orderColumn = '-playerGem';
            });
        };
        $scope.orderByGold = function () {
            switchProviderOrServer(function () {
                $scope.showPlayerGold = true;
                $scope.orderColumn = '-playerGold';
            });
        };
        $scope.orderByConsecutiveVictories = function () {
            switchProviderOrServer(function () {
                $scope.showConsecutiveVictories = true;
                $scope.orderColumn = '-consecutiveVictories';
            });
        };
        $scope.orderByGamePoint = function () {
            switchProviderOrServer(function () {
                $scope.showPlayerGamePoint = true;
                $scope.orderColumn = '-playerGamePoint';
            });
        };
        $scope.orderByZigFloor = function () {
            switchProviderOrServer(function () {
                $scope.showZigFloor = true;
                $scope.orderColumn = '-zigFloor';
            });
        };
        $scope.orderByZigScore = function () {
            switchProviderOrServer(function () {
                $scope.showZigScore = true;
                $scope.orderColumn = '-zigScore';
            });
        };
        $scope.orderByVictoryScore = function () {
            switchProviderOrServer(function () {
                $scope.showVictoryScore = true;
                $scope.orderColumn = '-victoryScore';
            });
        };

        /* $rootScope.$watch('server', function (server) {
         search(function () {
         $scope.orderByPrepay();
         });
         });*/

        search(function () {
            $scope.orderByPrepay();
        });

        function search(onOrder) {
            $q.all([
                    ajaxService.send({
                        url: 'json/manageTools/rankingData/rankingData.findRankingData'
                    }) ,
                    ajaxService.getCodeMapping('serversMappings')
                ]).then(function (data) {
                    $scope.providerId = ajaxService.getData('provider').value;
                    $scope.serverId = ajaxService.getData('server').value;
                    $scope.serverMappings = data[1];
                    dataList = data[0].result || [];
                    $scope.dataList = dataList;
                    $scope.totalRecords = dataList.length;
                    onOrder && onOrder();
                });
        }

        function hideAllLastColumn() {
            $scope.showPlayerPrepay = false;
            $scope.showPlayerLevel = false;
            $scope.showPlayerGem = false;
            $scope.showPlayerGold = false;
            $scope.showConsecutiveVictories = false;
            $scope.showPlayerGamePoint = false;
            $scope.showZigFloor = false;
            $scope.showZigScore = false;
            $scope.showVictoryScore = false;
        }

        function switchProviderOrServer(onSwitch) {
            if ($scope.providerId != ajaxService.getData('provider').value || $scope.serverId != ajaxService.getData('server').value) {
                search(function () {
                    switchFuc();
                });
            } else {
                switchFuc();
            }

            function switchFuc() {
                hideAllLastColumn();
                $scope.dataList = dataList;
                onSwitch && onSwitch();
                $scope.$broadcast('pageFirst');
            }
        }
    });
});