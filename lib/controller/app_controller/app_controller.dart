import 'package:widgetgallery/data_model/app_data_model/material_theme_data_model/material_theme_data.dart';
import '../../common_libraries.dart';

class AppController extends GetxController{

  //will verify previous session
  RxBool isDarkModeCustom=false.obs;

  //will verify previous session and also use for switching theme
  var currentLightThemeIndex = 2.obs;
  var currentDarkThemeIndex = 3.obs;


  //list of custom themes
  final List<ThemeData> listOfCustomThemes=CustomMaterialThemes().materialThemeList;

  // initialising local storage for storing and retrieving brightness and theme data info
  final JsonPrefsFile themeDataStorage = JsonPrefsFile('myThemeData');
  final JsonPrefsFile brightnessModeStorage = JsonPrefsFile('myBrightnessMode');


  // loading theme data value
  Future<void> loadThemeData()async{
    final loadedThemeData = await themeDataStorage.load();
    if (loadedThemeData.containsKey('myThemeData')) {
      currentLightThemeIndex.value = loadedThemeData['myThemeData'];
      currentDarkThemeIndex.value=currentLightThemeIndex.value+1;
      await changeThemeData(currentLightThemeIndex.value);
      update();
    } else {
      await saveThemeData();
    }
  }

  // changing the current theme to new theme from list of custom theme
  Future<void> changeThemeData(int index) async {
    currentLightThemeIndex.value = index;
    currentDarkThemeIndex.value = index+1;
    await saveThemeData();
    update();
  }

  // saving current theme index to local storage
  Future<void> saveThemeData() async {
    final dataToSave = {'myThemeData': currentLightThemeIndex.value};
    await themeDataStorage.save(dataToSave);
  }

  // loading brightness mode
  Future<void> loadBrightnessMode() async {
    final loadedBrightnessMode = await brightnessModeStorage.load();
    if (loadedBrightnessMode.containsKey('myBrightnessMode')) {
      isDarkModeCustom.value = loadedBrightnessMode['myBrightnessMode'];
      update();
    } else {
      await saveBrightnessMode();
    }
  }

  // saving current brightness mode
  Future<void> saveBrightnessMode() async {
    final dataToSave = {'myBrightnessMode': isDarkModeCustom.value};
    await brightnessModeStorage.save(dataToSave);
  }

  // toggling brightness
  Future<void> toggleBrightnessMode()async {
    isDarkModeCustom.value = !isDarkModeCustom.value;
    await saveBrightnessMode(); // Save the updated theme preference
    await changeThemeData(currentLightThemeIndex.value);
    update();

  }

  // app start will load this function
  Future<void> bootstrap() async {
    customDebugPrint('App Controller', "Bootstrap started", ".........");
    await loadThemeData();
    await loadBrightnessMode();
  }

  @override
  void onInit() {
    super.onInit();
    bootstrap();
  }


}