
import '../../common_libraries.dart';

void showCustomSnackBar(String title,String message) {
  Get.snackbar(
    title,
    message,

    backgroundColor: Get.theme.colorScheme.primary,
    colorText:Get.theme.colorScheme.onPrimary,
    borderRadius: 10,
    snackPosition: SnackPosition.BOTTOM,
    duration: const Duration(seconds: 3),
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(15),
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
    icon:  Icon(Icons.info,color:  Get.theme.colorScheme.onPrimary,),
    shouldIconPulse: true,
    mainButton: TextButton(
      onPressed: () {
        Get.back();
      },
      child:  Text(
        "Dismiss",
        style: TextStyle(color: Get.theme.colorScheme.onPrimary,),
      ),
    ),
    onTap: (snackBar) {
    },
    animationDuration: const Duration(milliseconds: 500),
    isDismissible: true,

  );
}
