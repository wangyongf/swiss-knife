import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:easy_developer/data/net/dio_factory.dart';
import 'package:easy_developer/data/net/url_host.dart';
import 'package:easy_developer/data/net/url_path.dart';
import 'package:easy_developer/manager/user_manager.dart';
import 'package:path_provider/path_provider.dart';

// TODO: 还没找到一个自认为完美的缓存解决方案？
class SwissKnifeApi {
  factory SwissKnifeApi() => _getInstance();
  static SwissKnifeApi _instance;

  SwissKnifeApi._internal() {
    /// TODO: setup the WanAndroidApi.
  }

  static SwissKnifeApi _getInstance() {
    if (_instance == null) {
      _instance = SwissKnifeApi._internal();
    }
    return _instance;
  }

  /// 登录接口
  Future<Response> login(String username, String password) async {
    FormData formData = new FormData.from({
      "username": "$username",
      "password": "$password",
    });
    Dio dio = await _getDio();
    return dio.post(UrlHost.WANANDROID_BASE_URL + UrlPath.LOGIN,
        data: formData);
  }

  /// 注册接口
  Future<Response> register(String username, String password) async {
    FormData formData = FormData.from({
      "username": "$username",
      "password": "$password",
      "repassword": "$password",
    });
    Dio dio = await _getDio();
    return dio.post(UrlHost.WANANDROID_BASE_URL + UrlPath.REGISTER,
        data: formData);
  }

  Future<Response> createIssue(String title, String body) async {
    String url = UrlHost.GITHUB_API + UrlPath.GITHUB_ISSUE;
    Dio dio = await _getDio();
    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Authorization": "token a9fa7c0aba0db77a72c0c6f2be54f40296ca14af"
    };
    Map<String, String> jsonBody = {"title": title, "body": body};
    return await dio.post(url,
        data: jsonBody, options: Options(headers: headers));
  }

  Future<Dio> _getDio() async {
    Dio dio = DioFactory().getDio();
//    bool isProxy = await SpUtils.getBool('enableDioProxy') ?? false;
    bool isProxy = false;
    String proxy = '192.168.2.163:8888';
//    String proxy = '172.18.107.196:8888';
    dio.onHttpClientCreate = (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return isProxy && Platform.isAndroid;
      };
      client.findProxy = (url) {
        return isProxy ? 'PROXY $proxy' : 'DIRECT';
      };
    };
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path + "/cookie";
    dio.cookieJar = PersistCookieJar(tempPath);
    return dio;
  }

  Options _getOptions() {
    return Options(headers: UserManager().getHeader());
  }
}
