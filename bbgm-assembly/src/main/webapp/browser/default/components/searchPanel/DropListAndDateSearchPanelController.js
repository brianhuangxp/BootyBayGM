define(['app'], function (app) {
    app.register.controller('DropListAndDateSearchPanelController',
        function ($scope, routeResolver, componentOptions, ajaxService, commonService, dateFilter) {
            var parameters = componentOptions.parameters,
                isDateRange = parameters.isDateRange != false,
                isAutoSearch = !!parameters.isAutoSearch,
                codeType = parameters.codeType,
                submitColumn = parameters.submitColumn || 'oid',
                selectedTitle = parameters.selectedTitle;

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

            ajaxService.getCodeMapping(codeType, true).then(function (codeMappings) {
                $scope.oidSelectors = commonService.selectCommonSort(commonService.appendSelectAll(codeMappings));
                $scope.oid = $scope.oidSelectors[0];
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
                    endDate: $scope.endDate
                };
                var requestOption = {
                    startDate: dateFilter($scope.startDate, RC.Config.dateFormat),
                    endDate: dateFilter($scope.endDate, RC.Config.dateFormat)
                };
                option[submitColumn] = $scope.oid;
                requestOption[submitColumn] = $scope.oid ? $scope.oid.value : undefined
                $scope.$emit('search', requestOption, option);
            }
        });
});