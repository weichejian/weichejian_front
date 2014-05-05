'use strict'
angular.module('weichejian.services')
  .factory 'Storage', [
    '$window'
    '$rootScope'
    ($window, $rootScope) ->
      storage = $window.localStorage
      set: (key, value) ->
        saver = $window.JSON.stringify value
        storage.setItem key, saver
      get: (key) ->
        item = storage.getItem key
        $window.JSON.parse item
      remove: (key) ->
        storage.removeItem key
  ]