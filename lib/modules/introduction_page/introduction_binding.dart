import 'package:get/get.dart';
import 'package:my_portfolio/modules/introduction_page/introduction_controller.dart';

class IntroductionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroductionController());
  }
}
