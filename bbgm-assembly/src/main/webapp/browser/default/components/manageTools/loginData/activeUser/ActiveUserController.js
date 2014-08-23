define(['app'], function (app) {
    app.register.controller('ActiveUserController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '活跃用户数',
            pageName: 'ActiveUser'
        });
        $scope.$emit('switchBottomSearch', true);


        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };

        $scope.dateFrequencyTable = {
            name: 'DateFrequencyTable',
            location: 'commonTable/',
            parameters: {
                header: {
                    amountLabel: '活跃用户数'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/loginData/loginData.findActiveUser',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});