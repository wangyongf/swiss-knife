import 'package:device_info/device_info.dart';

/// TODO: 单例模式！
class MyDeviceInfo {
  /// 获取 Android 设备信息
  static Future<AndroidDeviceInfo> getAndroidDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    return await deviceInfo.androidInfo;
  }

  /// 获取 iOS 设备信息
  static Future<IosDeviceInfo> getIosDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    return await deviceInfo.iosInfo;
  }
}
