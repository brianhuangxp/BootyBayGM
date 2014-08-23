define(['app'], function (app) {
    app.register.controller('HeroHoneByAmountController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '修炼次数分布',
            pageName: 'HeroHoneByAmount'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };
        $scope.frequencyTable = {
            name: 'FrequencyTable',
            location: 'commonTable/',
            parameters:{
                header:{
                    frequencyLabel: '最高修炼次数',
                    amountLabel: '英雄数'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/hero.findHeroHoneByAmount',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});