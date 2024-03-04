import 'package:widgetgallery/common_libraries.dart';

class HomeScreenController extends GetxController{


  /// used for showing categorised item
  var expansionStates = <String, bool>{}.obs;

  void toggleExpansion(String category) {
    print("Expansion state and category inside home screen controller================>>>>>>>>>>>>");
    print(expansionStates);
    print(category);
    if (expansionStates.containsKey(category)) {
      expansionStates[category] = !expansionStates[category]!;
    } else {
      expansionStates[category] = true;
    }
  }


  void closeBottomSheet() {
    Get.back();
  }

}