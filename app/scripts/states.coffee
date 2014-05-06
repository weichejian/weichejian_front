'use strict'
angular.module('weichejian.states')
  .config [
    '$stateProvider'
    '$urlRouterProvider'
    ($stateProvider, $urlRouterProvider) ->
      #route
      $urlRouterProvider
        .otherwise '/'

      #state
      $stateProvider
        .state '/',
          url: '/'
          templateUrl: 'views/main.html'
          controller: 'MainCtrl'

        .state 'login',
          url: '/login'
          templateUrl: 'views/login.html'
          controller: 'LoginCtrl'

        .state 'main',
          url: '/main'
          templateUrl: 'views/main.html'
          controller: 'MainCtrl'
    ]

