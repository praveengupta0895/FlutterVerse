import 'package:widgetgallery/common_libraries.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


void customDebugPrint(String className, String methodName, dynamic value) {
  if (kDebugMode) {
    print('[$className.$methodName]: $value');
  }
}


class PlatformInfo {


  static bool get isDesktop => GetPlatform.isDesktop;
  static bool get isDesktopOrWeb => isDesktop || GetPlatform.isWeb;
  static bool get isMobile => GetPlatform.isMobile;

  static double get pixelRatio => Get.pixelRatio;

  static bool get isWindows => GetPlatform.isWindows;
  static bool get isLinux => GetPlatform.isLinux;
  static bool get isMacOS => GetPlatform.isMacOS;
  static bool get isAndroid => GetPlatform.isAndroid;
  static bool get isIOS => GetPlatform.isIOS;

  static bool get isDebugMode => Get.isLogEnable;


  static Future<bool> get isConnected async => await InternetConnectionChecker().hasConnection;
  static Future<bool> get isDisconnected async => (await isConnected) == false;
}
