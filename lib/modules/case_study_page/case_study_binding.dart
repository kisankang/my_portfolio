import 'package:get/get.dart';
import 'package:my_portfolio/modules/case_study_page/case_study_controller.dart';

class CaseStudyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CaseStudyController());
  }
}
