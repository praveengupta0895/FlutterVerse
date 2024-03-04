
import 'package:widgetgallery/controller/app_controller/home_screen_controller/common/search_box_controller.dart';

import '../../../../common_libraries.dart';
import '../../widget_information_screen/widget_info_screen_new.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    SearchBoxController searchBoxController =
    Get.put(SearchBoxController());

    // AppLogic appLogic = Get.find();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: GetBuilder<SearchBoxController>(
            builder: (searchController) => Obx(() => Stack(
              children: [
                ///Search result
                searchController.isFocused.value ||
                    searchController.filteredWidgetList.isNotEmpty
                    ? searchController.filteredWidgetList.isEmpty &&
                    searchController.searchController.text.length > 2
                    ? Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color:Theme.of(context).colorScheme.background
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                              'No results found.',
                              style: Get.theme.textTheme.headlineSmall,
                            )),
                      )),
                )
                    : Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: searchController
                              .filteredWidgetList.isEmpty
                              ? Colors.transparent
                              : Get.isDarkMode
                              ? Get.theme.colorScheme.onInverseSurface
                              : Get.theme.colorScheme.surface
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: (searchController
                              .filteredWidgetList.length /
                              2)
                              .ceil(),
                          itemBuilder: (context, index) {
                            final startIndex = index * 2;
                            final endIndex = startIndex + 2;
                            final List<Map<String, dynamic>> items =
                            searchController.filteredWidgetList
                                .sublist(
                                startIndex,
                                endIndex.clamp(
                                    0,
                                    searchController
                                        .filteredWidgetList
                                        .length));
                            return GridView.builder(
                              shrinkWrap: true,
                              physics:
                              const NeverScrollableScrollPhysics(),
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8.0,
                                mainAxisSpacing: 8.0,
                                childAspectRatio: 1.0, // Adjust as needed
                              ),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                final item = items[index];
                                return GridTile(
                                  child: InkWell(
                                    onTap: () {
                                      // Handle onTap action
                                      Get.to(() => WidgetInformationScreenNew(widgetData: item,));
                                    },
                                    child: Card(
                                      // color:
                                      //     Get.theme.colorScheme.surfaceVariant,
        
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(item['icon'], size: 50),
                                          const SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(item['name'],overflow: TextOverflow.ellipsis,),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                )
                    : const SizedBox(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // Add padding around the search bar
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    // Use a Material design search bar
                    child: TextField(
                      focusNode: searchController.focusNode,
                      autofocus: false,
                      controller: searchController.searchController,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        suffixIcon:
                        // searchController.isFocused.value ||
                        //     searchController.filteredWidgetList.isNotEmpty
                        //     ?
                        IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            /// on closing search
                              searchController.clearFilteredWidgetList();
                              // searchBoxController.focusNode.unfocus();
                              Get.back();
                          }
                        ),
                            // : const SizedBox(),
                        // Add a search icon or button to the search bar
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Perform the search here
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))),
      ),
    );
  }
}