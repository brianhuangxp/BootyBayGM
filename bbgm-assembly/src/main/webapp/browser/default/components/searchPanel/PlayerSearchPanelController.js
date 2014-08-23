define(['app'], function (app) {
    app.register.controller('PlayerSearchPanelController', function ($scope, componentOptions, windowUtils) {
        var parameters = componentOptions.parameters,
            isAutoSearch = !!parameters.isAutoSearch;

        $scope.search = search;
        isAutoSearch && search();

        function search() {
            if (!$scope.playerId && !$scope.playerName) {
                windowUtils.alterWindow("玩家id和玩家名称至少需要输入一个！");
                return;
            }
            if ($scope.playerId && isNaN($scope.playerId)) {
                windowUtils.alterWindow("玩家id必须为数字！");
                return;
            }
            var requestOption = {};
            if ($scope.playerId) {
                requestOption.playerId = $scope.playerId;
            }
            if ($scope.playerName) {
                requestOption.playerName = $scope.playerName;
            }
            $scope.$emit('search', requestOption, requestOption);
        }
    });
});