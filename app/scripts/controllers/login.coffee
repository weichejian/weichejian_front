'use strict'
angular.module('weichejian.controllers')
  .controller 'LoginCtrl',
    [
      '$scope'
      'Auth'
      ($scope, Auth) ->
        $scope.login = ->
          return if $scope.email.length is 0 or $scope.password.length is 0
          Auth.login $scope.email, $scope.password
    ]