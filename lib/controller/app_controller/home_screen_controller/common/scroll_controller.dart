import 'package:widgetgallery/common_libraries.dart';

class ScrollControllerGetX extends GetxController {
  ScrollController scrollController = ScrollController();
  final showShowAllButton = false.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void _scrollListener() {
    final double maxScroll = scrollController.position.maxScrollExtent;
    final double currentScroll = scrollController.position.pixels;
    final double scrollThreshold = maxScroll / 5;

    showShowAllButton.value = currentScroll > scrollThreshold ;

    update();

  }

  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}