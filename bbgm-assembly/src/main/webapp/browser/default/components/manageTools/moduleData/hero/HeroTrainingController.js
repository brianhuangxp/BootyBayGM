define(['app'], function (app) {
    app.register.controller('HeroTrainingController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '训练次数',
            pageName: 'HeroTraining'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/'
        };
        $scope.frequencyTable = {
            name: 'DateFrequencyTable',
            location: 'commonTable/',
            parameters:{
                header:{
                    amountLabel: '总次数'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/hero.findHeroTraining',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});