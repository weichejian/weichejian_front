'use strict';

angular.module('weichejian.controllers')
  .controller 'DetailController', ($scope, $routeParams, $http) ->
    $http.get('phones/' + $routeParams.phoneId + '.json').success (data) ->
      $scope.phone = data;
    $scope.setImage = (imageUrl) ->
        $scope.mainImageUrl = imageUrl
