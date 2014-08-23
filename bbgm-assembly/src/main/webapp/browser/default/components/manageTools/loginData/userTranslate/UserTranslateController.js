define(['app'], function (app) {
    app.register.controller('UserTranslateController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '用户转换率',
            pageName: 'UserTranslate'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };
        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/loginData/loginData.findUserTranslate',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.translateList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});