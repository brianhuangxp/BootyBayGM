define(['app'], function (app) {
    app.register.controller('ResourceSearchPanelController',
        function ($scope, routeResolver, componentOptions, ajaxService, commonService, dateFilter) {
            var parameters = componentOptions.parameters,
                isDateRange = parameters.isDateRange != false,
                isAutoSearch = !!parameters.isAutoSearch;

            $scope.isDateRange = isDateRange;
            var now = new Date();
            $scope.startDate = parameters.startDate || new Date(now.getFullYear(), now.getMonth(), now.getDate() - 1);
            $scope.endDate = parameters.endDate || new Date();
            $scope.resourceTypeSelectors = [ ];

            $scope.startDateOptions = {
                onSelect: startOnSelect,
                maxDate: new Date()
            }
            $scope.endDateOptions = {
                onSelect: endOnSelect,
                minDate: new Date()
            };

            ajaxService.getCodeMapping('G_BASIC_TYPE', true).then(function (codeMappings) {
                $scope.resourceTypeSelectors = commonService.selectCommonSort(codeMappings);
                $scope.resourceType = $scope.resourceTypeSelectors[0];
                $scope.search = search;
                isAutoSearch && search();
            });

            $scope.$watch('resourceType', function (data) {
                if (data) {
                    $scope.rankSelectors = commonService.selectCommonSort(commonService.appendSelectAll(data.childCodes));
                    $scope.rank = $scope.rankSelectors[0];
                }
            });

            $scope.$watch('rank', function (data) {
                if (data) {
                    $scope.oidSelectors = commonService.selectCommonSort(commonService.appendSelectAll(data.childCodes));
                    $scope.oid = $scope.oidSelectors[0];
                }
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
                    resourceType: $scope.resourceType,
                    rank: $scope.rank,
                    oid: $scope.oid
                };
                var requestOption = {
                    startDate: dateFilter($scope.startDate, RC.Config.dateFormat),
                    endDate: dateFilter($scope.endDate, RC.Config.dateFormat),
                    resourceType: $scope.resourceType.value,
                    rank: $scope.rank ? $scope.rank.value : undefined,
                    oid: $scope.oid ? $scope.oid.value : undefined
                };
                $scope.$emit('search', requestOption, option);
            }
        });
});