import 'package:get/get.dart';
import 'package:my_portfolio/modules/ability_page/ability_controller.dart';
import 'package:my_portfolio/modules/main_page/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(() => MainController());
    Get.lazyPut(() => AbilityController(notionRepository: Get.find()));
  }
}
