define(['app'], function (app) {
    app.register.controller('ChargeRecordsSearchPanelController',
        function ($scope, routeResolver, componentOptions, dateFilter) {
            var parameters = componentOptions.parameters,
                isDateRange = parameters.isDateRange != false,
                isAutoSearch = !!parameters.isAutoSearch;

            $scope.isDateRange = isDateRange;
            var now = new Date();
            $scope.startDate = parameters.startDate || new Date(now.getFullYear(), now.getMonth(), now.getDate() - 1);
            $scope.endDate = parameters.endDate || new Date();

            $scope.startDateOptions = {
                onSelect: startOnSelect,
                maxDate: new Date()
            }
            $scope.endDateOptions = {
                onSelect: endOnSelect,
                minDate: new Date()
            };
            $scope.playerId = '';
            $scope.search = search;
            isAutoSearch && search();

            function startOnSelect(value, picker) {
                $("#search-panel-endDate").datepicker("option", "minDate", value);
                //$scope.endDateOptions.minDate = value;
            };

            function endOnSelect(value, picker) {
                $("#search-panel-startDate").datepicker("option", "maxDate", value);
                //$scope.startDateOptions.maxDate = value;
            };

            function search() {
                if ('' != $scope.playerId.trim() && ( isNaN($scope.playerId) ||
                    parseInt($scope.playerId) != $scope.playerId || parseInt($scope.playerId) < 0
                    )) {
                    alert("玩家ID，请输入正确的玩家ID!")
                    return;
                }
                var option = {
                    startDate: $scope.startDate,
                    endDate: $scope.endDate,
                    playerId: $scope.playerId,
                    playerName: $scope.playerName
                };
                var requestOption = {
                    startDate: dateFilter($scope.startDate, RC.Config.dateFormat),
                    endDate: dateFilter($scope.endDate, RC.Config.dateFormat),
                    playerId: $scope.playerId,
                    playerName: $scope.playerName
                };
                if (isNaN($scope.playerId) || '' == $scope.playerId.trim()) {
                    delete option.playerId;
                    delete requestOption.playerId;
                }
                $scope.$emit('search', requestOption, option);
            }
        });
});