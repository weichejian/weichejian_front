// Generated by CoffeeScript 1.7.1
'use strict';
angular.module('weichejian.states').config([
  '$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
    return $stateProvider.state('/', {
      url: '/',
      templateUrl: 'views/index.html',
      controller: 'MainCtrl'
    }).state('login', {
      url: '/login',
      templateUrl: 'views/login.html',
      controller: 'LoginCtrl'
    }).state('register', {
      url: '/register',
      templateUrl: 'views/register.html',
      controller: 'RegisterCtrl'
    }).state('main', {
      url: '/main',
      templateUrl: 'views/index.html',
      controller: 'MainCtrl'
    });
  }
]);
