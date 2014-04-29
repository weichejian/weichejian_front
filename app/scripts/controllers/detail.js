'use strict';

angular.module('weichejianFrontApp')
  .controller('DetailController', function ($scope, $routeParams, $http) {
    $http.get('phones/' + $routeParams.phoneId + '.json').success(function(data) {
       $scope.phone = data;
     });
    $scope.setImage = function(imageUrl) {
        $scope.mainImageUrl = imageUrl;
      }
  });
