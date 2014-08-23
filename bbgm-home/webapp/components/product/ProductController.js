define(['app'], function (app) {
    app.register.controller('ProductController', function ($http, $scope, routeResolver) {
        $scope.$emit('pageHeaderTitleChange', {
            title: '厦门游互/产品项目',
            pageName: 'Product'
        });
        $scope.$emit('selectMenu', 'product');
        $('#pageContainer').addClass("pageContainer-product");
    });
});

