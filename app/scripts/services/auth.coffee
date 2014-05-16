'use strict'
angular.module('weichejian.services')
  .factory 'Auth',
    [
      'StorageExt'
      '$window'
      '$rootScope'
      '$state'
      '$log'
      '$q'
      (StorageExt, $window, $rootScope, $state, $log, $q) ->
        #factory
        # Resource = $resource Config.service.activity.url, Config.service.activity.params

        service =
          currentUser: null
          login: (name, password, token)->
            deferred = $q.defer()
            deferred.resolve [
              username: name
              desc: "。。。。。。"
              avatar: "http://mmbiz.qpic.cn/mmbiz/LibiaVTSibfW4HFHpEJnk8E8J11V4tRs9IedpMAQ3ibj9JuqtH3L8NncZyzXrT4f3icrlyFu8OfGrTqKON6O27TCvqw/0"
              url: "http://mp.weixin.qq.com/s?__biz=MjM5NDA0NTM2MQ==&mid=200013272&idx=1&sn=a8d933d846bc11fbfd09327a708f32d5"
            ]
            deferred.promise

            # params = username: username
            # params =
            #   name: name
            # if password?
            #   params.password = md5 password
            # else
            #   params.token = token
            # Resource.query(params)
            #   .$promise.then (activities) ->
            #     $log.debug username, activities, ' ->activities'
            #     activities

          logOut: ->
            # if $window.confirm($translate 'signout_tips')
            #   # Socket.emit 'logout', ''
            #   StorageExt.csr.set null
            #   StorageExt.unread.set null
            #   service.currentUser = null
            #   $state.transitionTo 'signin'

          isLogin: ->
            !!service.currentUser

          getToken: ->
            service.currentUser?.token ? ''

          authed: (data) ->
            $log.debug data, ' ->authed'
            data.avatar = data.avatar ? 'images/avatar.png'
            StorageExt.user.set data
            service.currentUser = data
            $state.transitionTo 'main'

        service
    ]

