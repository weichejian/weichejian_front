'use strict';

angular
  .module('weichejianFrontApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/phones/:phoneId', {templateUrl: 'views/detail.html', controller: 'DetailController'})
      .otherwise({
        redirectTo: '/'
      });
  });
