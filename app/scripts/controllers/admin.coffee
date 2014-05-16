'use strict';

angular.module('weichejian.controllers')
  .controller 'AdminCtrl',
    [
      '$scope'
      'StorageExt'
      'Auth'
      '$log'
      'Config'
      ($scope, StorageExt, Auth, $log,Config) ->
        $scope.logOut = Auth.logOut
        $scope.isLogin = Auth.isLogin
        $scope.menus = Config.adminMenus
        $scope.currentUser = StorageExt.user.get()
        $scope.status =
          isFirstOpen: true
          isFirstDisabled: false

    ]

