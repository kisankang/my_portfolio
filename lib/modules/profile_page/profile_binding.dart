import 'package:get/get.dart';
import 'package:my_portfolio/modules/profile_page/profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
