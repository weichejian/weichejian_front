'use strict'
angular.module('common.config', ['common.domain', 'common.env'])
  .service 'Config',
    [
      'Domain'
      'Env'
      (Domain, Env) ->
        domain = Domain[Env.agent][Env.env]
        service =
          #ng http
          csr:
            url: domain.http_server + '/csr'
          #ng resource
          customer:
            url: domain.http_server + '/csr/customers:username'
            params: {username: '@username'}
          unread:
            url: domain.http_server + '/messages/unread'
            params: null
          history:
            url: domain.http_server + '/messages/csr/:username/:first/:size'
            params: {username: '@username', first:'@first', size: '@size'}
          broadcast:
            url: domain.http_server + '/messages/broadcast/:first/:size'
            params: {first:'@first', size: '@size'}
          activity:
            url: domain.http_server + '/activities'
            params: null
          analysts:
            url: domain.device_server + '/jry-device/ajax/user/analyst.do'

          chatlist:
            url: domain.http_server + '/messages/session'
            params: null
          chatdetail:
            url: domain.http_server + '/messages/sessionDetail'
            params: null

          #others
          voice_resource:
            url: domain.voice_resource_server
          socket:
            url: domain.chat_server + '/csr'
          crm_help:
            url: domain.crm_server + '/helpPage/home.do'
        ###
        1: csr
        2: customer
        4: broadcast
        8: call
        16: voice
        32: text
        ###
        messagesType =
          customer_call: 2|8
          customer_voice: 2|16
          customer_text: 2|32
          csr_text: 1|32
          broadcast_text: 4
          customer_broadcast_text: 4|1

        customerStatusMap =
          0: '0_new_customer'
          1: '1_intented_customr'
          2: '2_open_customer'
          3: '3_signed_customer'
          4: '4_actived_customer'

        customerlevelsMap =
          0: 'A'
          1: 'B'
          2: 'C'

        csrStatusMap =
          0: 'online'
          1: 'busy'
          # 2: $translate 'left'

        defaults =
          historySize: 30
          broadcastHistorySize: 20
          messageMaxSize: 200

        storageKey =
          unread: '___unread'
          csr: '___csr'
          lastdate: '___lastdate'

        #service
        @service = service
        @defaults = defaults
        @storageKey = storageKey
        @messagesType = messagesType
        @customerStatusMap = customerStatusMap
        @customerlevelsMap = customerlevelsMap
        @csrStatusMap = csrStatusMap
        return
    ]
