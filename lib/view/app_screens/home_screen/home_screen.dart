
import 'package:widgetgallery/view/app_screens/home_screen/widgets/search_box.dart';
import '../../../common_libraries.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../controller/app_controller/home_screen_controller/home_screen_controller.dart';
import '../../../data_model/tutorial_data_model/tutorial_widget_data_model/tutorial_widget_data_model.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categoryItems = getCategoryItems();
    return Stack(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child:
            GetBuilder<HomeScreenController>(builder: (controller) {
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
                          // _buildCategoryBottomSheet(category);
                        }
                      },
                      child: Card(
                        // color: Theme.of(context).colorScheme.tertiaryContainer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(categoryItems[index]['icon'], size: 40,),
                            const SizedBox(height: 10),
                            Text(categoryItems[index]['category'],style: Theme.of(context).textTheme.labelMedium,)
                          ],
                        ),
                      ));
                }),
              );
            })
        ),
        const SearchBox()
      ],
    );
  }
}

