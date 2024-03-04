
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:widgetgallery/controller/app_controller/app_controller.dart';
import 'package:widgetgallery/controller/app_controller/creative_screen_controller/backdrop_filter_controller.dart';
import 'package:widgetgallery/data_model/app_data_model/material_theme_data_model/material_scheme.dart';
import 'package:widgetgallery/view/app_screens/creative_screen/widgets/material_theme_tile.dart';
import '../../../../common_libraries.dart';
import 'package:backdrop/backdrop.dart';
import '../../../../controller/app_controller/home_screen_controller/common/scroll_controller.dart';
import '../../../../controller/app_controller/home_screen_controller/home_screen_controller.dart';
import '../../../../data_model/tutorial_data_model/tutorial_widget_data_model/tutorial_widget_data_model.dart';
import '../../home_screen/widgets/search_box.dart';
import '../../widget_information_screen/widget_info_screen_new.dart';


class CustomBackdropFilter extends StatelessWidget {
  const CustomBackdropFilter({super.key});

  @override
  Widget build(BuildContext context) {
    BackdropFilterController backdropFilterController =
        Get.find<BackdropFilterController>();
    List<Map<String, dynamic>> categoryItems = getCategoryItems();
    return
      GetBuilder<AppController>(builder: (appController){
        return BackdropScaffold(
          backLayerBackgroundColor:Theme.of(context).colorScheme.primary,
          frontLayerBackgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          frontLayerScrim: Theme.of(context).cardColor,
          appBar: BackdropAppBar(
            leading: const BackdropToggleButton(
              icon: AnimatedIcons.close_menu,
            ),

            actions:  <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  Get.to(()=>const SearchBox());
                },
              ),
            ],
          ),
          stickyFrontLayer: true,
          backLayer: BackdropNavigationBackLayer(
            items:  [
              MaterialThemeTile(colorScheme: appController.isDarkModeCustom.value?MaterialSchemaOne().darkSchema:MaterialSchemaOne().lightSchema,currentLightThemeIndex: 0,),
              MaterialThemeTile(colorScheme: appController.isDarkModeCustom.value?MaterialSchemaTwo().darkSchema:MaterialSchemaTwo().lightSchema,currentLightThemeIndex: 2,),
              MaterialThemeTile(colorScheme: appController.isDarkModeCustom.value?MaterialSchemaThree().darkSchema:MaterialSchemaThree().lightSchema,currentLightThemeIndex: 4,),
              // MaterialThemeTile(colorScheme: appController.isDarkModeCustom.value?MaterialSchemaFour().darkSchema:MaterialSchemaFour().lightSchema,currentLightThemeIndex: 6,),
              MaterialThemeTile(colorScheme: appController.isDarkModeCustom.value?MaterialSchemaFive().darkSchema:MaterialSchemaFive().lightSchema,currentLightThemeIndex: 6,),
            ],
            onTap: (int position) {
              backdropFilterController.changeIndex(position);
              backdropFilterController.update();
            },
          ),
          subHeader: const BackdropSubHeader(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            title: Text("Widgets Categories"),
          ),
          frontLayer:  Center(
            child: GetBuilder<HomeScreenController>(builder: (controller) {
              return GridView.custom(
                gridDelegate: SliverStairedGridDelegate(
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  startCrossAxisDirectionReversed: true,
                  pattern: [
                    const StairedGridTile(0.5, 1.5),
                    const StairedGridTile(0.5, 1.5),
                    const StairedGridTile(1.0, 15 / 5),
                    const StairedGridTile(.5, 8 / 4),
                    const StairedGridTile(.5, 8 / 4),
                    const StairedGridTile(.5, 2),
                    const StairedGridTile(.5, 8 / 4),
                    const StairedGridTile(1, 8 / 4),
                    const StairedGridTile(0.33, 1),
                    const StairedGridTile(0.33, 1),
                    const StairedGridTile(0.33, 1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                    childCount: categoryItems.length, (context, index) {
                  final item = categoryItems[index];
                  final category = item['category'];
                  final isExpanded =
                      controller.expansionStates[category] ?? false;

                  return GestureDetector(
                      onTap: () {
                        controller.toggleExpansion(category);
                        if (isExpanded) {
                          controller.closeBottomSheet();
                        } else {
                          ///Building bottom sheet for each category
                          _buildCategoryBottomSheet(category);
                        }
                      },
                      child: Card(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(categoryItems[index]['icon'], size: 40,),
                            const SizedBox(height: 10),
                            Text(categoryItems[index]['category'],)
                          ],
                        ),
                      ));
                }),
              );
            })
          ),
        );
      });
  }
}



///building bottom sheet
void _buildCategoryBottomSheet(String category) {
  final ScrollControllerGetX scrollController = Get.put(ScrollControllerGetX());
  final categoryItems = _buildCategoryItemsList(category);
  if (categoryItems.isNotEmpty) {
    Get.bottomSheet(
      isScrollControlled: false,
      Container(
        margin: const EdgeInsets.only(left: 8.0, right: 8, top: 8, bottom: 16),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Get.theme.colorScheme.surface,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// build handle contain top part of bottom sheet
            buildHandle(category),

            /// Grid Data of bottom sheet
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController.scrollController,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),

                    shrinkWrap: true,
                    crossAxisCount: 1,
                    childAspectRatio: 3, // Adjust aspect ratio if needed
                    children: categoryItems,
                  ),
                ),
              ),
            ),

            /// show all button of bottom sheet
            Obx(() => scrollController.showShowAllButton.value
                ? Column(
              children: [
                // const SizedBox(height: 10), // Adjust spacing if needed
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle the "Show all" button tap
                      Get.to(CategoryGrid(category: category));
                    },
                    child:  Text("Show all",style: Get.theme.textTheme.labelMedium,),
                  ),
                ),
              ],
            )
                : const SizedBox.shrink())
          ],
        ),
      ),
    );
  } else {}
}

/// build handle contain top part of bottom sheet
Widget buildHandle(String category) {
  return FractionallySizedBox(
    widthFactor: 0.25,
    child: Container(
      margin: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      child: Column(
        children: [
          Container(
            height: 5.0,
            decoration: BoxDecoration(
              color: Get.theme.colorScheme.tertiary,
              borderRadius: const BorderRadius.all(Radius.circular(2.5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              category,
              style: Get.theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    ),
  );
}

/// this is building main category item on bottomsheet
List<Widget> _buildCategoryItemsList(String category) {
  List<Widget> gridTiles = [];
  List<Map<String, dynamic>> categoryItems =
  widgetList.where((item) => item['category'] == category).toList();

  for (var item in categoryItems) {
    gridTiles.add(GridTile(
      child: InkWell(
        onTap: () {
          // Handle onTap for each category item if needed
          Get.to(() => WidgetInformationScreenNew(
            widgetData: item,
          ));
        },
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(item['icon'], size: 40),
              const SizedBox(height: 10),
              Text(
                item['name'],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  // Ensure that each row contains two items
  List<List<Widget>> gridRows = [];
  for (int i = 0; i < gridTiles.length; i += 2) {
    int end = i + 2;
    if (end > gridTiles.length) {
      end = gridTiles
          .length; // Adjust the end index if it exceeds the length of gridTiles
    }
    gridRows.add(gridTiles.sublist(i, end));
  }

  // Create a list of rows containing GridTiles
  List<Widget> gridRowsWidgets = [];
  for (var row in gridRows) {
    gridRowsWidgets.add(Row(
      children: [
        Expanded(child: row[0]),
        Expanded(
            child: row.length > 1
                ? row[1]
                : const SizedBox()), // Handle the case where there is only one item in the row
      ],
    ));
  }

  return gridRowsWidgets;
}

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    final categoryItemsSet = getCategoryItemsByCategory(category).toSet();
    final categoryItems = categoryItemsSet.toList();
    return Scaffold(
      body: GridView.custom(
        gridDelegate: SliverStairedGridDelegate(
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          startCrossAxisDirectionReversed: true,
          pattern: [
            const StairedGridTile(0.5, 1.5),
            const StairedGridTile(0.5, 1.5),
            const StairedGridTile(1.0, 15 / 5),
            const StairedGridTile(.5, 8 / 4),
            const StairedGridTile(.5, 8 / 4),
            const StairedGridTile(.5, 2),
            const StairedGridTile(.5, 8 / 4),
            const StairedGridTile(1, 8 / 4),
            const StairedGridTile(0.33, 1),
            const StairedGridTile(0.33, 1),
            const StairedGridTile(0.33, 1),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
            childCount: categoryItems.length, (context, index) {
          final item = categoryItems[index];
          final category = item['category'];
          // final isExpanded = controller.expansionStates[category] ?? false;

          return GestureDetector(
              onTap: () {
                Get.to(() => WidgetInformationScreenNew(widgetData: item,));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(categoryItems[index]['icon'], size: 50),
                    const SizedBox(height: 10),
                    Text(
                      categoryItems[index]['name'],
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ));
        }),
      ),
    );
  }
}
