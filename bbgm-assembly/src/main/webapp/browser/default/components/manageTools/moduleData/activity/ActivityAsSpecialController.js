define(['app'], function (app) {
    app.register.controller('ActivityAsSpecialController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '指定活动次数',
            pageName: 'ActivityAsSpecial'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DropListAndDateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true,
                codeType: 'G_ACTIVITY_SPECIFIC_TYPE',
                selectedTitle: '选择查询活动'
            }
        };
        $scope.frequencyTable = {
            name: 'DateFrequencyTable',
            location: 'commonTable/'
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/activity.findActivityAsSpecial',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});