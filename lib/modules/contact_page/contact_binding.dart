import 'package:get/get.dart';
import 'package:my_portfolio/modules/contact_page/contact_controller.dart';

class ContactBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactController());
  }
}
