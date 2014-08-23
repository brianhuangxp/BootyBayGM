var RC= {};
RC.Config = {};
RC.Config.dateFormat = 'MM-dd-YYYY';
define(['app'], function (app) {
    app.register.controller('TestController', function ($http, $scope, routeResolver, componentOptions,$compile, $window, $rootScope, windowUtils, $q) {
        $scope.abc = "fff";
        var s = $rootScope.$new();
        var s2 = s.$new();

        var uiWindow = {
            title: 'abc',
            width: '400px'

        }
//        console.log($compile('<div x-window x-width="800px" x-title="abc"><div>')($scope));
        $scope.$on('windowClose', function(e, promise) {
            console.log('abb');
        });
        s.$on('windowClose', function(e, promise) {
                    console.log('abb1');
        });
        s2.$on('windowClose', function(e, promise) {
                e.stopPropagation();
                console.log('abb2');
            return;
        });
        s.searchPanel = {
            name: 'DateSearchPanel',
            location: 'searchPanel/',
            parameters: {
                isAutoSearch: true
            }
        };
        s.uiButtons = [
            {
                label: 'Ok',
                closeable: true,
                clickEvent: function (event) {
                    console.log('outer');
                }
            },
            {
                label: 'Cancel',
                closeable: false,
                clickEvent: function (event) {
                    console.log('outer2');
                }
            }
        ];

        /*$scope.openWindow = function () {
            var windowHtml = $compile('<div ui-window="multiple" ui-width="600" ui-title="abc" move-window="false" ui-cmp="searchPanel" ui-buttons="uiButtons"><div>')(s);
            angular.element(document.body).append(windowHtml);
            //            var windowHtml = $compile('<div ui-window="multiple" ui-width="600" ui-title="abc" move-window="true" ui-cmp="searchPanel" ui-buttons="uiButtons"><div>')(s);
            //            angular.element(document.body).append(windowHtml);
            //            windowHtml = $compile('<div ui-window="multiple" ui-width="300" ui-title="abc" move-window="true" ui-cmp="searchPanel" ui-buttons="uiButtons"><div>')(s2);
            //            angular.element(document.body).append(windowHtml);
            //            windowHtml = $compile('<div ui-window ui-width="400" ui-title="abc" move-window="true" ui-cmp="searchPanel" ui-buttons="uiButtons"><div>')(s);
            //            angular.element(document.body).append(windowHtml);
        }*/

        $scope.openWindow = function () {
            windowUtils.openWindow({
                    windowType : 'multiple',
                    title: '<span style="color: #ff0000">Welcome root!</span>',
                    width: 800,
                    movable: true,
    //                contentStyle: {
    //                    height : '200px'
    //                },
    //                contentHtml: '<div style="color: #ff0000">Welcome root!</div>',
                    cmp: {
                        name: 'CommonUserRegister',
                        location: 'uiTest/'
                    },
                    buttons: [
                        {
                            label: 'Confirm',
                            closeable: true,
                            clickEvent: function (event, model) {
                                var confirmDefer = $q.defer();
                                windowUtils.confirmWindow('Are you sure?' , null, function(opt){
                                    if(opt == 'OK'){
                                        confirmDefer.resolve();
                                    }
                                });
                                return confirmDefer.promise;
                            }
                        },
                        {
                            label: 'Ok',
                            closeable: true,
                            needVerify: true,
                            clickEvent: function (event, model) {
                                console.log(event);
                                console.log(model);
                            }
                        },
                        {
                            label: 'Cancel',
                            closeable: true,
                            clickEvent: function (event) {
                                console.log('outer2');
                            }
                        }
                    ]
                });
        }

//        $scope.openWindow = function () {
//            windowUtils.alterWindow('alter', 'title', true);
//        }

        /*$scope.openWindow = function () {
            windowUtils.confirmWindow('Are you sure?' , null, function(opt){
                console.log(opt);
//                if(opt == 'OK'){
//                    alert(opt);
//                } else {
//                    console.log('cancel!!');
//                }
            }, true);
        }*/

    });
});

