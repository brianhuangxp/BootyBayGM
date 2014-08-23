define(['app'], function (app) {
    app.register.controller('DateSearchPanelController', function ($scope, routeResolver, componentOptions, dateFilter) {
        var parameters = componentOptions.parameters,
            isDateRange = parameters.isDateRange != false,
            isHideSearchBtn = parameters.isHideSearchBtn != true,
            isAutoSearch = !!parameters.isAutoSearch;

        $scope.isDateRange = isDateRange;
        $scope.isHideSearchBtn = isHideSearchBtn;
        var now = new Date();
        $scope.startDate = parameters.startDate || new Date(now.getFullYear(), now.getMonth(), now.getDate() - 1);
        $scope.endDate = parameters.endDate || new Date();
        $scope.startDateLabel = parameters.startDateLabel || ( isDateRange ? '开始日期：' : '选择日期');
        $scope.endDateLabel = parameters.endDateLabel || '结束日期：';
        $scope.searchLabel = parameters.searchLabel || '查询';

        $scope.startDateOptions = {
            onSelect: startOnSelect,
            maxDate: new Date()
        }
        $scope.endDateOptions = {
            onSelect: endOnSelect,
            minDate: new Date()
        };

        $scope.search = search;
        isAutoSearch && search();

        $scope.$on('getSearchData', function (event, callback) {
            angular.isFunction(callback) && callback(getRequestOption(), getSearchData());
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
            $scope.$emit('search', getRequestOption(), getSearchData());
        }

        function getSearchData() {
            return isDateRange ? {
                startDate: $scope.startDate,
                endDate: $scope.endDate
            } : {
                selectDate: $scope.startDate
            };
        }

        function getRequestOption() {
            return isDateRange ? {
                startDate: dateFilter($scope.startDate, RC.Config.dateFormat),
                endDate: dateFilter($scope.endDate, RC.Config.dateFormat)
            } : {
                startDate: dateFilter($scope.startDate, RC.Config.dateFormat)
            };
        }
    });
});