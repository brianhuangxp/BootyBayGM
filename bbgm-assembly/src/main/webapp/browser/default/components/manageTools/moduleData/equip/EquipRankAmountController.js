define(['app'], function (app) {
    app.register.controller('EquipRankAmountController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '装备品质件数',
            pageName: 'EquipRankAmount'
        });
        $scope.$emit('switchBottomSearch', true);

        $scope.searchPanel = {
            name: 'DropListAndDateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true,
                codeType: 'G_EQUIP_RANK_TYPE',
                submitColumn: 'rank',
                selectedTitle: '选择装备品质'
            }
        };
        $scope.frequencyTable = {
            name: 'FrequencyTable',
            location: 'commonTable/',
            parameters: {
                header: {
                    frequencyLabel: '件数'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/equip.findEquipRankAmount',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});