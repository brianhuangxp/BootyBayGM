define(['app'], function (app) {
    app.register.controller('AdvancedSelectorController', function ($scope, routeResolver, componentOptions, $rootScope, ajaxService, windowUtils, $q, commonService) {
        var parameters = componentOptions.parameters;
        var advancedAwards = parameters.advancedAwards || {};
        var baseType = parameters.baseType;
        parameters.model.validation = function () {
            var confirmDefer = $q.defer();
            if (!$scope.model.oid || $scope.model.oid.value == -1) {
                windowUtils.alterWindow("请选择具体项!");
                return confirmDefer.reject();
            }
            if (!parameters.advancedType && !parameters.oid && advancedAwards[$scope.model.advancedType.value + '_' + $scope.model.oid.value]) {
                windowUtils.confirmWindow("额外奖励; " + $scope.model.oid.label + "已添加。 是否覆盖？", null, function (opt) {
                    if (opt == 'OK') {
                        confirmDefer.resolve();
                    }
                });
                return confirmDefer.promise;
            }
            confirmDefer.resolve();
            return confirmDefer.promise;
        };
        var initAdvancedType = initRank = parameters.advancedType ? true : false;
        $scope.advancedSelectors = parameters.advancedSelectors || [];
        $scope.model.advancedType = parameters.advancedType || ($scope.advancedSelectors && $scope.advancedSelectors[0]);
        $scope.model.rank = parameters.rank;
        $scope.model.oid = parameters.oid;
        $scope.model.amount = parameters.amount || '';

        $scope.$watch('model.advancedType', function (data) {
            if (data && data.value == baseType.honor) {
                $scope.oidSelectors = commonService.selectCommonSort(commonService.appendSelectAll(data.childCodes, '选择具体项'));
                $scope.model.oid = initAdvancedType ? parameters.oid : $scope.oidSelectors[0];
            } else if (data) {
                $scope.rankSelectors = commonService.selectCommonSort(commonService.appendSelectAll(data.childCodes, '选择品质'));
                $scope.model.rank = initAdvancedType ? parameters.rank : $scope.rankSelectors[0];
            }

            if (data && (data.value == baseType.hero || data.value == baseType.equip)) {
                $scope.model.amount = 1;
                $scope.readonly = true;
            } else {
                $scope.readonly = false;
            }
            initAdvancedType = false;
        });

        $scope.$watch('model.rank', function (data) {
            if (data) {
                $scope.oidSelectors = commonService.selectCommonSort(commonService.appendSelectAll(data.childCodes, '选择具体项'));
                $scope.model.oid = initRank ? parameters.oid : $scope.oidSelectors[0];
            }
            initRank = false;
        });

    });
});