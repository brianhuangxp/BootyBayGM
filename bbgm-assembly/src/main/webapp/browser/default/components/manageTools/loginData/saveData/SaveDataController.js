define(['app'], function (app) {
    app.register.controller('SaveDataController', function($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title:'留存数据',
            pageName:'SaveData'
        });
        $scope.$emit('switchBottomSearch', true);


        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isDateRange: false,
                isAutoSearch: true
            }
        };
        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/loginData/loginData.findSaveData',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.saveDataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});