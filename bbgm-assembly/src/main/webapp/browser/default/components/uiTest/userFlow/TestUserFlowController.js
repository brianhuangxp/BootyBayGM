var RC= {};
RC.Config = {};
RC.Config.dateFormat = 'MM-dd-YYYY';
define(['app'], function (app) {
    app.register.controller('TestUserFlowController', function ($http, $scope, uiFlow, windowUtils, $q) {
        /*$scope.startFlow = function () {
            uiFlow.startFlow({
                firstStep:{
                    cmp:{
                        name: 'UserWindow',
                        location: 'uiTest/'
                    },
                    cancelButtonLabel: 'cancel1',
                    hasCancelButton: true,
                    cancelButtonHandle: function(model){

                    },
                    nextButtonLabel: 'next',
                    hasNextButton: true,
                    nextButtonHandle: function(){

                    },
                    backButtonLabel: 'back',
                    hasBackButton: true,
                    backButtonHandle: function(){

                    },
                    completeButtonLabel: 'complete',
                    hasCompleteButton: true,
                    completeHandle: function(){

                    },
                    specialButtons:[
                        {
                            label: 'Ok',
                            closeable: true,
                            needVerify: true,
                            clickEvent: function (event, model) {
                                console.log(event);
                                console.log(model);
                            }
                        }
                    ]
                },
                nextStep:{

                },
                nextStepRule: function(model){

                }
            });
        }*/

        /*uiFlow.startFlow({
           steps: {
               firstStep:{
                   cmp:{
                       name: 'UserWindow',
                       location: 'uiTest/'
                   },
                   cancelButtonHandle: function(model){
                       console.log(model);
                       return true;
                   },
                   nextButtonHandle: function(model){
                        console.log(model);
                        return true;
                   },
                   specialButtons:[
                       {
                           label: 'Ok',
                           closeable: true,
                           needVerify: true,
                           clickEvent: function (event, model) {
                               console.log(event);
                               console.log(model);
                           }
                       }
                   ]
               }
           },
            preLoad: [
                {
                    name: 'UserWindow',
                    location: 'uiTest/'
                },
                {
                    name: 'UserWindow',
                    location: 'uiTest/'
                }
            ]
        });*/

//        $scope.model = {};
//        console.log($scope.$on);
//        console.log($scope.model.$on);


        $scope.registerWindow = function () {
            windowUtils.openWindow({
                windowType : 'multiple',
                title: 'Register user Flow',
                cmp: {
                    name: 'SelectRegisterUser',
                    location: 'uiTest/userFlow/'
                },
                movable: true
            });
        }

    });
});

