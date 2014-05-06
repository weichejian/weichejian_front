'use strict'
angular.module('weichejian.controllers')
  .controller 'LoginCtrl',
    [
      '$scope'
      'Auth'
      ($scope, Auth) ->
        $scope.signin = ->
          return if $scope.name.length is 0 or $scope.password.length is 0
          Auth.signIn $scope.name, $scope.password
    ]