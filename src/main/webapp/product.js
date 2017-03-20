var bootApp = angular.module('prodList', []);

bootApp.controller('prodLs', function ($scope, $http) {
    $http.get('/super-shop-ssm/prod/list').then(function (response) {
        //alert(response.status);
        console.log(response);
        $scope.prods = response.data.result;
        $scope.orderByPro="proNowPrice";
    });
});