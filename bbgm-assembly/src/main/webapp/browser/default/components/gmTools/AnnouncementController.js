define(['app'], function (app) {
    app.register.controller('AnnouncementController', function ($scope, ajaxService, windowUtils, dateFilter) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '游戏公告',
            pageName: 'Announcement'
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
        var now = new Date();
        $scope.startDate = new Date(now.getFullYear(), now.getMonth(), now.getDate() - 1);
        $scope.endDate = new Date();
        $scope.startDateOptions = {
            onSelect: startOnSelect,
            maxDate: new Date()
        }
        $scope.endDateOptions = {
            onSelect: endOnSelect,
            minDate: new Date()
        };
        function startOnSelect(value, picker) {
            $("#search-panel-endDate").datepicker("option", "minDate", value);
        };

        function endOnSelect(value, picker) {
            $("#search-panel-startDate").datepicker("option", "maxDate", value);
        };

        $scope.submit = function () {
            if (ajaxService.getData('provider').value == -1 || ajaxService.getData('server').value == -1) {
                windowUtils.alterWindow("请选择所属服务器！");
                return;
            }
            ajaxService.send({
                url: 'json/gmTools/intervene/intervene.announcement',
                requestData: {
                    startDate: dateFilter($scope.startDate, RC.Config.dateFormat),
                    endDate: dateFilter($scope.endDate, RC.Config.dateFormat),
                    announcement: $scope.announcement
                }
            }).then(function (data, status, headers, config) {
                    windowUtils.alterWindow(data.result.alertMsg);
                }, function (data, status, headers, config) {
                    windowUtils.alterWindow(data.result.alertMsg);
                }
            );
        };

    });
});