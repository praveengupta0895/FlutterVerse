
import 'package:widgetgallery/controller/app_controller/common/custom_bottom_navigation_controller.dart';

import '../../../common_libraries.dart';

class CustomBottomNavigator extends StatelessWidget {
  const CustomBottomNavigator({super.key, });


  @override
  Widget build(BuildContext context) {

    CustomBottomNavigationController bottomNavController = Get.find<CustomBottomNavigationController>();

    return

      Obx(() => Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent, // Set splash color to transparent
          highlightColor: Colors.transparent, // Set highlight color to transparent
        ),
        child: BottomNavigationBar(
          elevation: 2,

          type: BottomNavigationBarType.fixed,
          currentIndex: bottomNavController.currentIndex.value,
          onTap: (index) {
            bottomNavController.changeIndex(index);
            bottomNavController.update();
          },

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.palette),
              label: 'Creativity',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'About',
            ),
          ],
        ),
      ));

  }
}