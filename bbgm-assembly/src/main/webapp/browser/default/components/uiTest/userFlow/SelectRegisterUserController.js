define(['app'], function (app) {
    app.register.controller('SelectRegisterUserController', function ($http, $scope, uiFlow, windowUtils, $q,componentOptions) {
        var parameters = componentOptions.parameters;
        $scope.registerCommonUser = function ($event) {
            uiFlow.initFlow({
                steps:{
                    firstStep:{
//                        windowType : 'multiple',
                        title: 'Register Common User',
                        movable: true,
                        cmp: {
                            name: 'Step1',
                            location: 'uiTest/userFlow/flow1/'
                        }
                    }
                }
            });


//            $scope.$emit('$destroy', $event);
        }
        $scope.registerVipUser = function ($event) {
            parameters.model.destroy();
        }

    });
});

