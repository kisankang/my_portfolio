import 'package:get/get.dart';
import 'package:my_portfolio/modules/project_page/project_controller.dart';

class ProjectBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProjectController());
  }
}
