define(['app'], function (app) {
    app.register.controller('PlayerLevelController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '等级分布',
            pageName: 'PlayerLevel'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.frequencyTable = {
            name: 'FrequencyTable',
            location: 'commonTable/',
            parameters: {
                header: {
                    frequencyLabel: '等级',
                    amountLabel: '数量'
                }
            }
        };
        ajaxService.send({
            url: 'json/manageTools/loginData/loginData.findPlayerLevel'
        }).then(function (data, status, headers, config) {
                $scope.dataList = data.result || [];
            }, function (data, status, headers, config) {

            }
        );
    });
});