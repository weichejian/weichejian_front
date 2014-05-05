'use strict'
angular.module('weichejian.services')
  .factory 'Auth',
    [
      'StorageExt'
      '$window'
      '$rootScope'
      '$state'
      '$log'
      (StorageExt, $window, $rootScope, $state, $log) ->
        #factory
        service =
          currentCSR: null
          signIn: (name, password, token)->
            params =
              name: name
            if password?
              params.password = md5 password
            else
              params.token = token
            # Socket.emit 'auth', params#TODO auth

          signOut: ->
            # if $window.confirm($translate 'signout_tips')
            #   # Socket.emit 'logout', ''
            #   StorageExt.csr.set null
            #   StorageExt.unread.set null
            #   service.currentCSR = null
            #   $state.transitionTo 'signin'

          isSignedIn: ->
            !!service.currentCSR

          getToken: ->
            service.currentCSR?.token ? ''

          authed: (data) ->
            $log.debug data, ' ->authed'
            data.avatar = data.avatar ? 'images/avatar.png'
            StorageExt.csr.set data
            service.currentCSR = data
            $state.transitionTo 'main'

        service
    ]

