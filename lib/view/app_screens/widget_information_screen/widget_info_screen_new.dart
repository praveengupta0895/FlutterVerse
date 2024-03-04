
import 'package:backdrop/backdrop.dart';
import '../../../common_libraries.dart';
import '../../tutorial_screens/widget_mapping.dart';


class WidgetInformationScreenNew extends StatelessWidget {
  final Map<String, dynamic> widgetData;
  const WidgetInformationScreenNew({super.key, required this.widgetData});

  @override
  Widget build(BuildContext context) {
    Widget frontLayerWidget = WidgetMapping.getWidget(widgetData['name']);
    List<Widget> backLayerCode = WidgetMapping.getWidgetCode(widgetData['name']);

    return BackdropScaffold(
      backLayerBackgroundColor:Theme.of(context).colorScheme.primary,
      frontLayerBackgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      frontLayerScrim: Theme.of(context).cardColor,
      appBar: BackdropAppBar(

        leading:   IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Get.back();
          },
        ),
        // title: const Text("Navigation Example"),
        actions:  const <Widget>[

          BackdropToggleButton(
            icon: AnimatedIcons.list_view,
          )
        ],
      ),
      subHeader:  BackdropSubHeader(
        // divider: Divider(),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        divider:  Divider(thickness: .5,color: Theme.of(context).colorScheme.onSecondaryContainer,),
        title:RichText(
          text: TextSpan(
            style:  TextStyle(
              color: Theme.of(context).colorScheme.onSecondaryContainer, // Set your desired text color
              fontSize: 16, // Set your desired text size
            ),
            children: [
              TextSpan(
                text: widgetData['category'] + " -> ",
                style: const TextStyle(
                  fontWeight: FontWeight.bold, // Make the category bold
                ),
              ),
              TextSpan(
                text: widgetData['name'],
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),
              ),
            ],
          ),
          overflow: TextOverflow.fade,
        )

      ),
      stickyFrontLayer: true,
      frontLayer: frontLayerWidget,
      backLayer: BackdropNavigationBackLayer(
        items:   [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: backLayerCode.map((code) => Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: code,
                  ),
                ),
              )).toList(),

            ),
          ),

        ],
      ),
    );
  }
}
