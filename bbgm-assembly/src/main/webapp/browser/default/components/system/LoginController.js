define(['app'], function (app) {
    app.register.controller('LoginController', function ($scope, ajaxService) {
        $scope.$emit('pageHeaderTitleChange', {
            title: 'Login',
            pageName: 'Login'
        });

        $scope.userName = "root";
        $scope.userPwd = "root";
        $scope.login = function () {
            ajaxService.send({
                url: 'system/system.login',
                requestData: {
                    userName: $scope.userName,
                    userPwd: $scope.userPwd
                },
                isServerSearch: false
            }).then(function (data, status, headers, config) {
                    if (data.status.statusCode == 1) {
                        $scope.$emit('login', data.result, $scope);
                    } else {
                        alert("User and password don't match!");
                    }
                }, function (data, status, headers, config) {

                }
            );
            //$scope.$emit('login', {}, $scope);
        }
    });
});



var utils = function(){
    var commonService = getExtendServer("commonService");
    return {
        getExtendServer: getExtendServer,
        enableLogDebug : function(){
            commonService.enableLogDebug();
        },
        disableLogDebug: function(){
            commonService.disableLogDebug();
        },
        enableResourceRaw: function(){
            commonService.enableResourceRaw();
        },
        disableResourceRaw: function(){
            commonService.disableResourceRaw();
        }
    };

    function getExtendServer(service){
        return angular.injector(['angularExtend']).get(service);
    }
}();