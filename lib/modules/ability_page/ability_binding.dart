import 'package:get/get.dart';
import 'package:my_portfolio/modules/ability_page/ability_controller.dart';

class AbilityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AbilityController());
  }
}
