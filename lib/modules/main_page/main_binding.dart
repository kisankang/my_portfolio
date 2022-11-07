import 'package:get/get.dart';
import 'package:my_portfolio/modules/main_page/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
  }
}
