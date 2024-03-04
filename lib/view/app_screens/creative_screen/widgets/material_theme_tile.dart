
import 'package:widgetgallery/controller/app_controller/app_controller.dart';
import '../../../../common_libraries.dart';


class MaterialThemeTile extends StatelessWidget {
  final ColorScheme colorScheme;
  final int currentLightThemeIndex;
  const MaterialThemeTile({super.key, required this.colorScheme, required this.currentLightThemeIndex});

  @override
  Widget build(BuildContext context) {
    return
      GetBuilder<AppController>(builder: (controller){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: colorScheme.background,

              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _TileIcon(color: colorScheme.primary),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Material Design Tile',
                            style: TextStyle(
                              color: colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              ColorBox(color: colorScheme.primary,),
                              const SizedBox(width: 8),
                              ColorBox(color: colorScheme.secondary),
                              const SizedBox(width: 8),
                              ColorBox(color: colorScheme.tertiary),
                              const SizedBox(width: 8),


                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    _AdditionalFeatureSwitch(currentLightThemeIndex),
                  ],
                ),

              ),

            ),
          )
        );
      });
  }
}

class ColorBox extends StatelessWidget {
  final Color color;


  const ColorBox({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }
}



class _AdditionalFeatureSwitch extends StatefulWidget {
  final int themeIndex;
  const _AdditionalFeatureSwitch(this.themeIndex);


  @override
  _AdditionalFeatureSwitchState createState() => _AdditionalFeatureSwitchState();
}

class _AdditionalFeatureSwitchState extends State<_AdditionalFeatureSwitch> {
  AppController appController = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: .7,
      child: Switch(
        value: appController.currentLightThemeIndex.value == widget.themeIndex,
        onChanged: (newValue) {
          setState(() {
            if (newValue) {
              appController.changeThemeData(widget.themeIndex);
            }
          });
        },
        activeColor: Theme.of(context).focusColor,
        inactiveTrackColor: Theme.of(context).highlightColor,
      ),
    );
  }
}


class _TileIcon extends StatelessWidget {
  final Color color;

  const _TileIcon({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Icon(
        Icons.favorite,
        size: 25,
        color: Colors.white,
      ),
    );
  }
}

