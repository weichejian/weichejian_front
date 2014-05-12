angular.module('weichejian.locales')
  .config [
    '$translateProvider'
    ($translateProvider) ->
      $translateProvider.translations 'cn',
        #notications
        new_version: '有新版本更新 点击重新加载'
        socket_connect: '与服务器建立链接'
        socket_disconnect: '与服务端断开连接 正在帮你重连 或点击重新登录'
        socket_error: '出错了...'
        socket_auth_failed: '登录失败'
        socket_token_expired: '用户过期 点击重新登录'
        customer_need_callback: '客户请求回电 请及时处理'
        http_token_expired: '用户过期 点击重新登录'
        chat_message_illegal: '输入内容不能为空!'
        exceed_max_length: '消息长度不能大于200'
        #customer status
        '0_new_customer': '新客户'
        '1_intented_customr': '意向客户'
        '2_open_customer': '开户客户'
        '3_signed_customer': '签约客户'
        '4_actived_customer': '激活客户'
        #customer levels
        A: 'A'
        B: 'B'
        C: 'C'

        #common
        appname:'微车间'
        spirit:'创新 专注'
        submit: '更新'
        updateSucc: '更新成功!'
        updateError: '更新失败..'
        home: '首页'
        sample: '案例'
        product: '套餐'
        about: '关于我们'
        contact: '联系我们'
        usecenter: '我的欢迎辞'
        login: '登录'
        logout: '登出'
        register: '注册'
        online: '在线'
        username: '用户名'
        password: '密码'
        forgot: '忘记密码？'
        registerTips: '还没有账号？注册一个'
        loginTips: '已经有账号了? 马上登陆'
        prev: '&larr;上一页'
        next: '下一页&rarr;'

        something_loading: '正在加载...'

        no_flash_plugin: '<a href="http://get.adobe.com/flashplayer/" target="_blank">没有发现Flash Player插件 点击下载</a>'
        recieved_message_title: '有新的消息 请注意查收'
        copyright: '© 2014 - 微车间'

      $translateProvider.preferredLanguage 'cn'
  ]