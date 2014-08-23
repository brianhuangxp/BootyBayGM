define(['app'], function (app) {
    app.register.controller('ConditionSelectorController', function ($scope, routeResolver, componentOptions, $rootScope, ajaxService, windowUtils, $q) {
        var parameters = componentOptions.parameters;
        var conditions = parameters.conditions || {};
        parameters.model.validation= function(){
            var confirmDefer = $q.defer();
            if(!$scope.model.conditionType || $scope.model.conditionType.value == -1){
                windowUtils.alterWindow("请选择玩家的发放条件!");
                return confirmDefer.reject();
            }
            if(!parameters.conditionType && conditions[$scope.model.conditionType.value]){
                windowUtils.confirmWindow("玩家的发放条件; " + $scope.model.conditionType.label + "已添加。 是否覆盖？" , null, function(opt){
                    if(opt == 'OK'){
                        confirmDefer.resolve();
                    }
                });
                return confirmDefer.promise;
            }

            if(!$scope.model.cMin || isNaN($scope.model.cMin)){
                windowUtils.alterWindow("输入无效的范围下限!");
                return confirmDefer.reject();
            }
            if(!$scope.model.cMax || isNaN($scope.model.cMax)){
                windowUtils.alterWindow("输入无效的范围上限!");
                return confirmDefer.reject();
            }
            if(parseInt($scope.model.cMin) > parseInt($scope.model.cMax)){
                windowUtils.alterWindow("输入的范围下限大于范围上限，无法进行筛选!");
                return confirmDefer.reject();
            }
            confirmDefer.resolve();
            return confirmDefer.promise;
        };
        $scope.cOidSelectors = parameters.cOidSelectors || [];
        $scope.model.conditionType = parameters.conditionType || ($scope.cOidSelectors && $scope.cOidSelectors[0]);
        $scope.model.cMin = parameters.cMin;
        $scope.model.cMax = parameters.cMax;
    });
});