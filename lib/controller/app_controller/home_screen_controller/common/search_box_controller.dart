
import 'package:widgetgallery/common_libraries.dart';

import '../../../../data_model/tutorial_data_model/tutorial_widget_data_model/tutorial_widget_data_model.dart';



class SearchBoxController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  RxList<Map<String, dynamic>> filteredWidgetList =
      <Map<String, dynamic>>[].obs;
  RxString query = ''.obs;

  final isFocused = true.obs;
  final focusNode = FocusNode();

  @override
  void onInit() {
    super.onInit();

    // Request focus when the controller is initialized
    focusNode.requestFocus();


    searchController.addListener(() {
      query.value = searchController.text;
    });

    focusNode.addListener(() {

      isFocused.value = focusNode.hasFocus;

    });

    debounce(query, (_) {
      filterWidgetList(query.value);
    }, time: const Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  void clearFilteredWidgetList() {
    searchController.text = "";
    filteredWidgetList.clear();
    isFocused.value = false;
    FocusManager.instance.primaryFocus?.unfocus();
    // FocusScope.of(Get.context!).unfocus();
    // focusNode.dispose();
  }


  void filterWidgetList(String query) {
    if (query.isEmpty || query.length < 2) {
      filteredWidgetList.clear();


    } else if (query.length >= 3) {
      filteredWidgetList.assignAll(widgetList
          .where((item) =>
      item['name']
          .toString()
          .toLowerCase()
          .contains(query.toLowerCase()) ||
          item['category']
              .toString()
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList());
    }
  }
}
