'use strict';

angular.module('weichejian.controllers')
  .controller 'AdminCtrl',
    [
      '$scope'
      'StorageExt'
      'Auth'
      '$log'
      ($scope, StorageExt, Auth, $log) ->
        $scope.logOut = Auth.logOut
        $scope.isLogin = Auth.isLogin
        $scope.$watch ->
          StorageExt.user.get()
        , (value) ->
          $scope.currentUser = value
    ]

