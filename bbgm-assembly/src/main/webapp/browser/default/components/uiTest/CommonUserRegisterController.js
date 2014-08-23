define(['app'], function (app) {
    app.register.controller('CommonUserRegisterController', function ($scope, routeResolver, componentOptions, $rootScope, ajaxService, windowUtils, $q) {
        var parameters = componentOptions.parameters;
        //parameters.model 等价于 $scope.model
//        console.log(parameters.model);
//        console.log($scope.model);
//        $scope.model = {};
        parameters.model.validation= function(){
            var confirmDefer = $q.defer();
            if(!$scope.model.userName){
                windowUtils.alterWindow("Please input user Name!");
                return confirmDefer.promise;
            }
            if(!$scope.model.userPwd){
                windowUtils.alterWindow("Please input user password!");
                return confirmDefer.promise;
            }
            if($scope.model.userPwd != $scope.model.userPwd2){
                windowUtils.alterWindow("Confirm Password no match!");
                return confirmDefer.promise;
            }
            windowUtils.confirmWindow("Are you sure register user?", null, function(opt){
                if(opt == 'OK'){
                    confirmDefer.resolve();
                }
            });
            return confirmDefer.promise;
        }
    });
});