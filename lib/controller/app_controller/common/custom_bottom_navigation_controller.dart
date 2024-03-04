import 'package:widgetgallery/common_libraries.dart';

class CustomBottomNavigationController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int index) {

    currentIndex.value = index;
  }
}