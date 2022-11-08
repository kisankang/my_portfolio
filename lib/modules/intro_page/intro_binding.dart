import 'package:get/get.dart';
import 'package:my_portfolio/modules/intro_page/intro_controller.dart';

class IntroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => IntroController(),
    );
  }
}
