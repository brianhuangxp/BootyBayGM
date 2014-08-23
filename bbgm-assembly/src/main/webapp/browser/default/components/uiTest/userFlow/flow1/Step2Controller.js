define(['app'], function (app) {
    app.register.controller('Step2Controller', function ($scope, routeResolver, componentOptions, $rootScope, ajaxService, windowUtils, $q) {
        var parameters = componentOptions.parameters;
        $scope.next = function(){
            $scope.$emit('nextFlow',{
//                        windowType : 'multiple',
                title: 'Check Phone Number',
                movable: true,
                cmp: {
                    name: 'Step2',
                    location: 'uiTest/userFlow/flow1/'
                }
            });
        }
        $scope.back = function(){
            $scope.$emit('backFlow');
        }
    });
});