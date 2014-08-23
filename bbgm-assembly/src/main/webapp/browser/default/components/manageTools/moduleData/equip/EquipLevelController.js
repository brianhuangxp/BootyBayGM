define(['app'], function (app) {
    app.register.controller('EquipLevelController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '强化级别数量',
            pageName: 'EquipLevel'
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
                    frequencyLabel: '强化级别'
                }
            }
        };

        $scope.$on('search', function (event, requestOption, option) {
            ajaxService.send({
                url: 'json/manageTools/moduleData/equip.findEquipLevel',
                requestData: requestOption
            }).then(function (data, status, headers, config) {
                    $scope.dataList = data.result || [];
                }, function (data, status, headers, config) {

                }
            );
        });
    });
});