import 'package:widgetgallery/controller/app_controller/common/custom_bottom_navigation_controller.dart';
import 'package:widgetgallery/controller/app_controller/creative_screen_controller/backdrop_filter_controller.dart';
import '../../../common_libraries.dart';
import 'package:widgetgallery/view/app_screens/creative_screen/widgets/custom_backdrop_filter.dart';

class CreativeScreen extends StatelessWidget {
  const CreativeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    BackdropFilterController backdropFilterController =
        Get.put(BackdropFilterController());
    return   Column(
      children: [
        Expanded(
          child: GetBuilder<BackdropFilterController>(
              builder: (backdropFilterController) {
                return const CustomBackdropFilter();
              }),
        )
      ],
    );
  }
}
