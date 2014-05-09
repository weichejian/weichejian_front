'use strict'
unless String::trim?
  String::trim = ->
      @.replace /(^\s*)|(\s*$)/g, ''


angular.module 'weichejianFrontApp',
  [
    'ngCookies'
    'ngSanitize'
    'ngAnimate'
    'ngResource'
    'ui.router'
    'pascalprecht.translate'


    'common.config'


    'weichejian.locales'
    'weichejian.services'
    'weichejian.controllers'
    'weichejian.states'

  ]

angular.module 'weichejian.locales', []
angular.module 'weichejian.services', []
angular.module 'weichejian.controllers', []
angular.module 'weichejian.states', []

angular.module('weichejianFrontApp')
  .constant('App',
    name: '微车间'
    version: '0.0.1'
  )
  .run([
    '$rootScope'
    'App'
    ($rootScope, App) ->
      $rootScope.app = App
      document.title = App.name
  ])
  .run([
    '$rootScope'
    '$state'
    'Auth'
    ($rootScope, $state, Auth) ->
      statesNotRequireAuth = ['/', 'login']
      $rootScope.$on '$stateChangeStart', (event, toState, toParams, fromState, fromParams) ->
        if !Auth.isSignedIn() and !(_.contains statesNotRequireAuth, toState.name)
          event.preventDefault()
          $state.transitionTo '/'
  ])
  # .run([
  #   '$rootScope'
  #   'Notification'
  #   '$state'
  #   '$window'
  #   ($rootScope, Notification, $state, $window) ->
  #     #http 403 401
  #     $rootScope.$on 'http:tokenExpired', ->
  #       Notification.send
  #         type: 'danger'
  #         text: 'http_token_expired'
  #         handler: ->
  #           $state.transitionTo 'signin'
  #     #applicationCache update
  #     if $window.applicationCache?
  #       $window.applicationCache.addEventListener 'updateready', () ->
  #         if $window.applicationCache.status is $window.applicationCache.UPDATEREADY
  #           $window.applicationCache.swapCache()
  #           $rootScope.$apply ->
  #             Notification.send
  #               type: 'info'
  #               text: 'new_version'
  #               handler: ->
  #                 $window.location.reload()

  # ])