define(['app'], function (app) {
    app.register.controller('TablePagerController', function($timeout, $scope, routeResolver, loader) {
        $scope.$watch('totalRecords', function(totalRecords){
            $scope.totalPage = Math.floor($scope.totalRecords / $scope.pageSize);
            $scope.showPager = $scope.totalPage > 1 ? true : false;
            $scope.hasNext = true;
        });
        $scope.$watch('currentPage', function(currentPage){
            $scope.$parent.currentPage = currentPage;
        });
        $scope.totalPage = 0;
        $scope.gotoPage = '';
        $scope.last = function(){
            if($scope.hasNext){
                loader.show();
                $timeout(function(){
                    $scope.currentPage = $scope.totalPage - 1;
                    hideLinkStyle();
                },30);
            }
        };
        $scope.$on('pageLast', $scope.last);
        $scope.next = function(){
            if($scope.hasNext){
                loader.show();
                $timeout(function(){
                    $scope.currentPage = ($scope.currentPage + 1 >= $scope.totalPage ) ? $scope.totalPage - 1 : $scope.currentPage + 1;
                    hideLinkStyle();
                },30);
            }
        }
        $scope.$on('pageNext', $scope.next);
        $scope.first = function(){
            if($scope.hasPrev){
                loader.show();
                $timeout(function(){
                    $scope.currentPage = 0;
                    hideLinkStyle();
                },30);
            }
        }
        $scope.$on('pageFirst', $scope.first);
        $scope.prev = function(){
            if($scope.hasPrev){
                loader.show();
                $timeout(function(){
                    $scope.currentPage = ($scope.currentPage - 1 < 0 ) ? 0 : $scope.currentPage - 1;
                    hideLinkStyle();
                },30);
            }
        }
        $scope.$on('pagePrev', $scope.prev);
        $scope.hasPrev = false;
        $scope.hasNext = false;

        $scope.goto = function(){
            var re = /^[1-9]+[0-9]*]*$/;
            if(!re.test($scope.gotoPage)){
                alert('请输入数字！');
                return;
            }
            var goto = parseInt($scope.gotoPage) - 1;
            if($scope.currentPage != goto){
                loader.show();
                $timeout(function(){
                    if(goto >= $scope.totalPage && $scope.currentPage == $scope.totalPage - 1){
//                    loader.hide();
                    } else if(goto >= $scope.totalPage){
                        $scope.currentPage = $scope.totalPage - 1;
                    } else{
                        $scope.currentPage = goto;
                    }
                    hideLinkStyle();
                },30);
            }
        }

        function hideLinkStyle(){
            $scope.hasPrev = ($scope.currentPage - 1 < 0) ? false : true;
            $scope.hasNext = ($scope.currentPage + 1 >= $scope.totalPage) ? false : true;
            loader.hide();
        }
    });
});