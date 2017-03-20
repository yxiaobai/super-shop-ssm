angular.module('demo', [])
    .controller('Hello', function ($scope, $http) {
        $http.get('/super-shop-ssm/prod/list').
            then(function (response) {
                //alert(response.status);
                //console.log(response);
                $scope.prodLs = response.data.result;
            });
    });