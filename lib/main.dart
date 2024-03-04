import 'package:widgetgallery/controller/app_controller/common/custom_bottom_navigation_controller.dart';
import 'common_libraries.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:widgetgallery/controller/app_controller/app_controller.dart';

import 'controller/app_controller/home_screen_controller/home_screen_controller.dart';

void main() async  {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Lazy initialization of AppController
  Get.lazyPut(() => AppController());

  // Lazy initialization of Custom Bottom Navigation
  Get.lazyPut(()=>CustomBottomNavigationController());

  // Lazy initialization of Home Screen Controller
  Get.lazyPut(()=>HomeScreenController());


  // loading bootstrap file
  await AppController().bootstrap();
  FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final appController = Get.find<AppController>();
      final currentTheme = appController.isDarkModeCustom.value
          ? appController.listOfCustomThemes[appController.currentDarkThemeIndex.value]
          : appController.listOfCustomThemes[appController.currentLightThemeIndex.value];
      return  AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: currentTheme.colorScheme.primary
      ),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: currentTheme,
        darkTheme: currentTheme,
        themeMode:appController.isDarkModeCustom.value ? ThemeMode.dark : ThemeMode.light,
        initialRoute: Routes.landing,
        getPages: Routes.routes,
      ),
    );});
  }
}
