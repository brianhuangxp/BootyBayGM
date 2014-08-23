define(['app'], function (app) {
    app.register.controller('Step1Controller', function ($scope, routeResolver, componentOptions, $rootScope, ajaxService, windowUtils, $q) {
        var parameters = componentOptions.parameters;
        //parameters.model 等价于 $scope.model
//        console.log(parameters.model);
//        console.log($scope.model);
//        $scope.model = {};
        /*parameters.model.validation = function () {
            var confirmDefer = $q.defer();
            if (!$scope.model.userName) {
                windowUtils.alterWindow("Please input user Name!");
                return confirmDefer.promise;
            }
            if (!$scope.model.userPwd) {
                windowUtils.alterWindow("Please input user password!");
                return confirmDefer.promise;
            }
            if ($scope.model.userPwd != $scope.model.userPwd2) {
                windowUtils.alterWindow("Confirm Password no match!");
                return confirmDefer.promise;
            }
            windowUtils.confirmWindow("Are you sure register user?", null, function (opt) {
                if (opt == 'OK') {
                    confirmDefer.resolve();
                }
            });
            return confirmDefer.promise;
        }*/

        $scope.commonUserRegister = {
            name: 'CommonUserRegister',
            location: 'uiTest/',
            parameters: {
                model: parameters.model
            }
        }
        $scope.next = function () {
            $scope.$emit('nextFlow',{
//                        windowType : 'multiple',
                title: 'Check Phone Number',
                movable: true,
                cmp: {
                    name: 'Step2',
                    location: 'uiTest/userFlow/flow1/'
                }
            },parameters.model);
//            $scope.$destroy();
            /*var a = {firstStep: {
//                        windowType : 'multiple',
                title: 'Register Common User',
                movable: true,
                cmp: {
                    name: 'Step1',
                    location: 'uiTest/userFlow/flow1/'
                }
            }}*/
        }
    });
});