define(['app'], function (app) {
    app.register.controller('SupplyAwardController', function ($scope, ajaxService, windowUtils, dateFilter, $q, $compile) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '奖励及补偿发放',
            pageName: 'SupplyAward'
        });
        $scope.$emit('switchBottomSearch', true);

        var cOidSelectors = [];
        var advancedSelectors = [];
        var baseType ={
            honor: 5,
            equip: 601,
            item: 602,
            hero: 603
        }
        $scope.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isHideSearchBtn: true
            }
        };
        $q.all([
                ajaxService.getCodeMapping('G_CONDITION_TYPE'),
                ajaxService.getCodeMapping('G_BASIC_TYPE', true, [baseType.honor, baseType.equip, baseType.item, baseType.hero])
            ]).then(function (data) {
                var cOidS = data[0];
                advancedSelectors = data[1];
                cOidS.unshift({
                    value: '-1',
                    label: '选择玩家的发放条件'
                });
                cOidSelectors = cOidS;
            });
        $scope.conditions = {};
        $scope.advancedAwards = {};
        $scope.setCondition = function (cOid) {
            var parameters = {cOidSelectors: cOidSelectors};
            var condition;
            var isEditAble = cOid && $scope.conditions[cOid];
            if (isEditAble) {
                condition = $scope.conditions[cOid];
                parameters.conditionType = condition.selector;
                parameters.cMin = condition.minScope;
                parameters.cMax = condition.maxScope;
            } else {
                parameters.conditions = $scope.conditions;
            }
            windowUtils.openWindow({
                title: '添加发放条件',
                width: 300,
                movable: true,
                cmp: {
                    name: 'ConditionSelector',
                    location: 'gmTools/supplyAward/',
                    parameters: parameters
                },
                buttons: [
                    {
                        label: isEditAble ? '修改' : '添加',
                        closeable: true,
                        needVerify: true,
                        clickEvent: function (event, model) {
                            var oid = model.conditionType.value;
                            if (model.conditionType) {
                                var vLabel = model.conditionType.label + ": " + model.cMin + " - " + model.cMax;
                                $scope.conditions[oid] = {
                                    conditionType: oid,
                                    minScope: model.cMin,
                                    maxScope: model.cMax,
                                    vLabel: vLabel,
                                    selector: model.conditionType
                                };
                            }
                            displaySupplyCondition();
                        }
                    },
                    {
                        label: isEditAble ? '移除' : '取消',
                        closeable: true,
                        clickEvent: function (event) {
                            if (isEditAble) {
                                delete $scope.conditions[cOid];
                                displaySupplyCondition();
                            }
                        }
                    }
                ]
            });
        }

        $scope.setAdvancedAward = function (key) {
            var parameters = {advancedSelectors: advancedSelectors, baseType: baseType};
            var isEditAble = key && $scope.advancedAwards[key];
            var advanced = $scope.advancedAwards[key];
            if (isEditAble) {
                parameters.advancedType = advanced.advancedType;
                parameters.rank = advanced.rank;
                parameters.oid = advanced.oid;
                parameters.amount = advanced.amount;
            } else {
                parameters.advancedAwards = $scope.advancedAwards;
            }
            windowUtils.openWindow({
                title: '添加额外奖励',
                width: 300,
                movable: true,
                cmp: {
                    name: 'AdvancedSelector',
                    location: 'gmTools/supplyAward/',
                    parameters: parameters
                },
                buttons: [
                    {
                        label: isEditAble ? '修改' : '添加',
                        closeable: true,
                        needVerify: true,
                        clickEvent: function (event, model) {
                            delete $scope.advancedAwards[key];
                            var type = model.advancedType.value;
                            var newKey;
                            if (model.advancedType && model.oid && model.amount) {
                                newKey = model.advancedType.value + '_' + model.oid.value;
                                var vLabel = model.advancedType.label + " - " + model.oid.label;
                                if (model.advancedType.value != baseType.hero && model.advancedType.value != baseType.equip) {
                                    vLabel += ": " + model.amount;
                                }
                                $scope.advancedAwards[newKey] = {
                                    advancedType: model.advancedType,
                                    rank: model.rank,
                                    oid: model.oid,
                                    amount: model.amount,
                                    vLabel: vLabel
                                }
                            }
                            displayAdvancedAward();
                        }
                    },
                    {
                        label: isEditAble ? '移除' : '取消',
                        closeable: true,
                        clickEvent: function (event, model) {
                            if (isEditAble) {
                                delete $scope.advancedAwards[key];
                                displayAdvancedAward();
                            }
                        }
                    }
                ]
            });
        }

        $scope.submit = function () {
            if (ajaxService.getData('provider').value == -1 || ajaxService.getData('server').value == -1) {
                windowUtils.alterWindow("请选择所属服务器！");
                return;
            }
            if(!$scope.emailTitle || !$scope.emailContent){
                windowUtils.alterWindow("请填写邮件的标题和内容！");
                return;
            }

            $scope.$broadcast("getSearchData", function (requestOption, searchData) {
                var suppleExtend = {};

                suppleExtend.conditionInfos = buildConditionInfo();
                suppleExtend.honorMap = buildHonorMap();
                suppleExtend.equips = buildAdvanced(baseType.equip);
                suppleExtend.items = buildAdvanced(baseType.item);
                suppleExtend.heros = buildAdvanced(baseType.hero);

                requestOption.suppleExtend = JSON.stringify(suppleExtend);
                requestOption.players = $scope.players;
                requestOption.gold = $scope.gold;
                requestOption.gem = $scope.gem;
                requestOption.exp = $scope.exp;
                requestOption.emailTitle = $scope.emailTitle;
                requestOption.emailContent = $scope.emailContent;
                requestOption.isRecharge = $scope.isRecharge ? 1 : 0;


                console.log(requestOption);
                ajaxService.send({
                    url: 'json/gmTools/intervene/intervene.applySupplyAward',
                    requestData: requestOption
                }).then(function (data, status, headers, config) {
                        windowUtils.alterWindow(data.result.alertMsg);
                    }, function (data, status, headers, config) {
                        //windowUtils.alterWindow(data.result.alertMsg);
                    }
                );
            });
        }

        function buildConditionInfo(){
            var conditionInfos = [];
            var p, condition;
            for(p in $scope.conditions){
                condition = $scope.conditions[p];
                conditionInfos.push({
                    conditionType: condition.conditionType,
                    minScope: condition.minScope,
                    maxScope: condition.maxScope
                })
            }
            return conditionInfos;
        }

        function buildAdvanced(type){
            var advanceInfos = [];
            var p, advance;
            for(p in $scope.advancedAwards){
                advance = $scope.advancedAwards[p];
                if(type == advance.advancedType.value){
                    advanceInfos.push({
                        oid: advance.oid.value,
                        amount:advance.amount
                    })
                }
            }
            return advanceInfos;
        }

        function buildHonorMap(){
            var advanceInfos = buildAdvanced(baseType.honor);
            var honorMap = {};
            var i, advance;
            for(i in advanceInfos){
                advance = advanceInfos[i];
                honorMap[advance.oid] = advance.amount
            }
            return honorMap;
        }

        function displaySupplyCondition() {
            var supplyConditionList = angular.element('#supplyConditionList')
            supplyConditionList.html('');
            for (var c in $scope.conditions) {
                supplyConditionList.append($compile('<span ng-click="setCondition(' + c + ')">' + $scope.conditions[c].vLabel + '</span>')($scope));
            }
        }

        function displayAdvancedAward() {
            var k;
            var supplyAdvanceList = angular.element('#supplyAdvanceList')
            supplyAdvanceList.html('');
            for (k in $scope.advancedAwards) {
                supplyAdvanceList.append($compile('<span ng-click="setAdvancedAward(\'' + k + '\')">' + $scope.advancedAwards[k].vLabel + '</span>')($scope));
            }
        }
    });
});