define(['app'], function (app) {
    app.register.controller('EquipSearchPanelController',
        function ($scope, routeResolver, componentOptions, ajaxService, commonService, dateFilter) {
            routeResolver.loadCss('searchPanel/SearchPanel.css');
            var parameters = componentOptions.parameters,
                isDateRange = parameters.isDateRange != false,
                isAutoSearch = !!parameters.isAutoSearch;

            $scope.isDateRange = isDateRange;
            var now = new Date();
            $scope.startDate = parameters.startDate || new Date(now.getFullYear(), now.getMonth(), now.getDate() - 1);
            $scope.endDate = parameters.endDate || new Date();
            $scope.rankSelectors = [ ];

            $scope.startDateOptions = {
                onSelect: startOnSelect,
                maxDate: new Date()
            }
            $scope.endDateOptions = {
                onSelect: endOnSelect,
                minDate: new Date()
            };

            ajaxService.getCodeMapping('G_EQUIP_RANK_TYPE', true).then(function (codeMappings) {
                $scope.rankSelectors = commonService.selectCommonSort(commonService.appendSelectAll(codeMappings));
                $scope.rank = $scope.rankSelectors[0];
                $scope.search = search;
                isAutoSearch && search();
            });

            function startOnSelect(value, picker) {
                $("#search-panel-endDate").datepicker("option", "minDate", value);
                //$scope.endDateOptions.minDate = value;
            };

            function endOnSelect(value, picker) {
                $("#search-panel-startDate").datepicker("option", "maxDate", value);
                //$scope.startDateOptions.maxDate = value;
            };

            function search() {
                var option = {
                    startDate: $scope.startDate,
                    endDate: $scope.endDate,
                    rank: $scope.rank
                };
                var requestOption = {
                    startDate: dateFilter($scope.startDate, RC.Config.dateFormat),
                    endDate: dateFilter($scope.endDate, RC.Config.dateFormat),
                    rank: $scope.rank ? $scope.rank.value : undefined
                };
                $scope.$emit('search', requestOption, option);
            }
        });
});