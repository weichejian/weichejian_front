'use strict'
angular.module('weichejian.services')
  .factory 'StorageExt', [
    'Storage'
    'Config'
    (Storage, Config) ->
      datetime:
        getById: (id) ->
          locals = Storage.get(Config.storageKey.lastdate) ? {}
          locals[id]
        setById: (id, datetime) ->
          locals = Storage.get(Config.storageKey.lastdate) ? {}
          locals[id] = datetime
          Storage.set Config.storageKey.lastdate, locals
      csr:
        get: ->
          Storage.get Config.storageKey.csr
        set: (data) ->
          Storage.set Config.storageKey.csr, data

      unread:
        getById: (id) ->
          locals = Storage.get(Config.storageKey.unread) ? {}
          locals[id]
        set: (data) ->
          Storage.set Config.storageKey.unread, data
        add: (id, data) ->
          locals = Storage.get(Config.storageKey.unread) ? {}
          locals[id] = [] unless locals[id]?
          locals[id].push data
          Storage.set Config.storageKey.unread, locals
        remove: (id) ->
          locals = Storage.get(Config.storageKey.unread)
          locals[id] = []
          Storage.set Config.storageKey.unread, locals
  ]

