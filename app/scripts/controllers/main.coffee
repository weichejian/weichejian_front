'use strict';

angular.module('weichejian.controllers')
  .controller 'MainCtrl',
    [
      '$scope'
      'StorageExt'
      'Auth'
      '$log'
      ($scope, StorageExt, Auth, $log) ->
        $scope.logOut = Auth.logOut
        $scope.isLogin = Auth.isLogin
        $scope.$watch ->
          Auth.currentUser
        , (value) ->
          $scope.currentUser = value
    ]

