'use strict';

angular.module('weichejianFrontApp')
  .controller('MainCtrl', function ($scope,$http) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
    $http.get('phones/phones.json').success(function(data) {
        $scope.phones = data;
      });
  $scope.orderProp = 'age';
  });
