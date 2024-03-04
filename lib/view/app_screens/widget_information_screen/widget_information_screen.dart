import '../../../common_libraries.dart';
import '../../../controller/app_controller/widget_information_controller/widget_information_controller.dart';

class WidgetInformationScreen extends StatelessWidget {
  WidgetInformationScreen({super.key, required this.widgetData});

  final Map<String, dynamic> widgetData;
  final List<String> tabTitles = ['Design', 'Code'];

  @override
  Widget build(BuildContext context) {
    final WidgetInformationController controller =
    Get.put(WidgetInformationController());
    final PageController pageController =
    PageController(initialPage: controller.selectedIndex.value);

    ever(controller.selectedIndex, (index) => pageController.jumpToPage(index));

    return Scaffold(
      body: SafeArea(
        child: GetX<WidgetInformationController>(
          builder: (widgetController) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Get.isDarkMode
                            ? Get.theme.colorScheme.onInverseSurface
                            : Get.theme.colorScheme.onInverseSurface
                      // borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: tabTitles.asMap().entries.map((entry) {
                        final index = entry.key;
                        final title = entry.value;
                        final isSelected =
                            index == widgetController.selectedIndex.value;

                        return Expanded(
                          child: GestureDetector(
                            onTap: () => widgetController.changeTabIndex(index),
                            child: Stack(
                              children: [
                                // Background for unselected tabs
                                Container(
                                  decoration: BoxDecoration(
                                    color:
                                    isSelected ? Colors.blue : Colors.white,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      title,
                                      style: TextStyle(
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                // Highlight for selected tab
                                if (isSelected)
                                  Positioned.fill(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) =>
                      widgetController.changeTabIndex(index),
                  children: [
                    DesignPage(
                      widgetData: widgetData,
                    ),
                    CodePage(widgetData: widgetData),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DesignPage extends StatelessWidget {
  const DesignPage({super.key, required this.widgetData});
  final Map<String, dynamic> widgetData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(widgetData['name']),
          Text(widgetData['category']),
        ],
      ),
    );
  }
}

class CodePage extends StatelessWidget {
  const CodePage({super.key, required this.widgetData});
  final Map<String, dynamic> widgetData;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Code Page Content'),
    );
  }
}


