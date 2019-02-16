import 'dart:async';

import 'package:dio/dio.dart';
import 'package:easy_developer/data/net/swissknife_api.dart';
import 'package:easy_developer/util/date_utils.dart';
import 'package:easy_developer/util/sp_utils.dart';

class UserManager {
  String userName;
  String password;
  String cookie;
  DateTime cookieExpiresTime;
  Map<String, String> _headerMap;

  static final UserManager _singleton = UserManager._internal();

  factory UserManager() {
    return _singleton;
  }

  UserManager._internal() {
    SpUtils.getUserName((String username) {
      this.userName = username;
    });
    SpUtils.getPassword((String password) {
      this.password = password;
    });
    SpUtils.getCookie((String cookie) {
      this.cookie = cookie;
    });
    SpUtils.getCookieExpires((String cookieExpires) {
      this.cookieExpiresTime = DateTime.parse(cookieExpires);
    });
  }

  /// TODO: 通过 Cookie 的有效性来验证是否登录？
  bool isLogin() {
    return null != userName &&
        userName.length >= 6 &&
        null != password &&
        password.length >= 6;
  }

  void logout() {
    SpUtils.putUserName(null);
    SpUtils.putPassword(null);
    SpUtils.putCookie("");
    SpUtils.putCookieExpires("");
    userName = null;
    password = null;
    _headerMap = null;
  }

  void refreshUserData({Function callback}) {
    SpUtils.getPassword((pw) {
      this.password = pw;
    });
    SpUtils.getUserName((str) {
      this.userName = str;
      if (null != callback) {
        callback();
      }
    });
    SpUtils.getCookie((str) {
      this.cookie = str;
      _headerMap = null;
    });
    SpUtils.getCookieExpires((str) {
      if (null != str && str.length > 0) {
        this.cookieExpiresTime = DateTime.parse(str);
        //提前3天请求新的cookie
        if (cookieExpiresTime.isAfter(DateUtils.getDaysAgo(3))) {
          Timer(Duration(milliseconds: 100), () {
            autoLogin();
          });
        }
      }
    });
  }

  void login({String username, String password, Function callback}) {
    _saveUserInfo(SwissKnifeApi().login(username, password), username, password,
        callback: callback);
  }

  void register({String username, String password, Function callback}) {
    _saveUserInfo(
        SwissKnifeApi().register(username, password), username, password,
        callback: callback);
  }

  void _saveUserInfo(
      Future<Response> responseF, String userName, String password,
      {Function callback}) {
    responseF.then((response) {});
  }

  void autoLogin() {
    if (isLogin()) {
      login();
    }
  }

  Map<String, String> getHeader() {
    if (null == _headerMap) {
      _headerMap = Map();
    }
    _headerMap["Cookie"] = cookie;
    return _headerMap;
  }
}
