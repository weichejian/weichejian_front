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

        .state 'signin',
          url: '/signin'
          templateUrl: 'views/signin.html'
          controller: 'SignInCtrl'

        .state 'main',
          url: '/main'
          templateUrl: 'views/main.html'
          controller: 'MainCtrl'
          resolve:
            customers: ['Customer', (Customer) ->
              Customer.fetch()
            ]
            unreads: ['Unread', (Unread) ->
              Unread.fetch()
            ]
    ]

