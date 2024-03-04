
import 'package:widgetgallery/controller/app_controller/app_controller.dart';
import 'package:widgetgallery/controller/app_controller/common/custom_bottom_navigation_controller.dart';
import 'package:widgetgallery/view/app_screens/common/custom_bottom_navigation.dart';
import 'package:widgetgallery/view/app_screens/creative_screen/creative_screen.dart';

import '../../common_libraries.dart';
import 'home_screen/home_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GetBuilder<CustomBottomNavigationController>(
        builder: (controller) {
          return SafeArea(
            child: IndexedStack(
              index: controller.currentIndex.value,
              children:    [

                GetBuilder<AppController>(builder: (appController){
                  return const CreativeScreen();
                }),

                const Center(child: Text('Page 2')),
                const Center(child: Text('Page 3')),
                const Center(child: Text('Page 4')),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ///Dark Mode
          await Get.find<AppController>().toggleBrightnessMode();
          // print(Theme.of(context).colorScheme.onPrimary,);


        },
        child: const Icon(Icons.lightbulb),
      ),
      bottomNavigationBar: const CustomBottomNavigator(
      ),
    );
  }
}
