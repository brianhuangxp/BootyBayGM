define(['app'], function (app) {
    app.register.controller('SupplyApproveController', function ($scope, ajaxService, windowUtils, dateFilter) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '操作审批',
            pageName: 'SupplyApprove'
        });
        $scope.$emit('switchBottomSearch', false);

        ajaxService.send({
            url: 'json/gmTools/intervene/intervene.findGMAuditApply'
        }).then(function (data, status, headers, config) {
//                console.log(data);

            }, function (data, status, headers, config) {

            }
        );

    });
});