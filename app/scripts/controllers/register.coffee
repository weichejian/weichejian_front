'use strict'
angular.module('weichejian.controllers')
  .controller 'RegisterCtrl',
    [
      '$scope'
      'Auth'
      ($scope, Auth) ->
        $scope.register = ->
          return if $scope.email.length is 0 or $scope.password.length is 0
          # Auth.login $scope.email, $scope.password
          console.log 'TOTO: add register service'
    ]