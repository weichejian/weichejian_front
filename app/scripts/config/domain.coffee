'use strict'
angular.module('common.domain', [])
  .constant 'Domain',
    tt:
      prod:
        chat_server: 'http://tt.chat.baidao.com'
        http_server: 'http://tt.chat-rest.baidao.com'
        crm_server: 'http://192.168.11.251/crm'
        voice_resource_server: 'http://tt.audio.baidao.com'
        device_server: 'http://test.yg.device.baidao.com'
      test:
        chat_server: 'http://test.tt.chat.baidao.com'
        http_server: 'http://test.tt.chat-rest.baidao.com'
        crm_server: 'http://192.168.26.21/crm-new'
        voice_resource_server: 'http://test.tt.audio.baidao.com'
        device_server: 'http://test.yg.device.baidao.com'
      # dev:
      #   chat_server: 'http://localhost:3010'
      #   http_server: 'http://localhost\\:3000'
      #   crm_server: 'http://192.168.26.21/crm-new'
      #   voice_resource_server: 'http://test.tt.audio.baidao.com'
    yg:
      prod:
        chat_server: 'http://yg.chat.baidao.com'
        http_server: 'http://yg.chat-rest.baidao.com'
        crm_server: 'http://192.168.11.251/crm'
        voice_resource_server: 'http://yg.audio.baidao.com'
        device_server: 'http://test.yg.device.baidao.com'
      test:
        chat_server: 'http://test.yg.chat.baidao.com'
        http_server: 'http://test.yg.chat-rest.baidao.com:3008'
        crm_server: 'http://192.168.26.21/crm-new'
        voice_resource_server: 'http://test.yg.audio.baidao.com'
        device_server: 'http://test.yg.device.baidao.com'
      # dev:
      #   chat_server: 'http://localhost:3010'
      #   http_server: 'http://localhost\\:3000'
      #   crm_server: 'http://192.168.26.21/crm-new'
