import 'package:widgetgallery/view/app_screens/creative_screen/creative_screen.dart';
import 'package:widgetgallery/view/app_screens/home_screen/home_screen.dart';
import 'package:widgetgallery/view/app_screens/landing_screen.dart';


import 'common_libraries.dart';
class Routes {
  static const String landing = '/';
  static const String home = '/home';
  static const String creative = '/creative';
  static const String search = '/search';
  static const String favorites = '/favorites';
  static const String settings = '/settings';

  static final unknownRoute = GetPage(
    name: '/unknown',
    page: () => const Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    ),
  );

  static final List<GetPage> routes = [
    GetPage(name: landing, page: () => const LandingScreen()),
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: creative, page: () => const CreativeScreen()),
    // GetPage(name: search, page: () => SearchPage()),
    // GetPage(name: favorites, page: () => FavoritesPage()),
    // GetPage(name: settings, page: () => SettingsPage()),
    unknownRoute,
  ];
}