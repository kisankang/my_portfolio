import 'package:get/get.dart';
import 'package:my_portfolio/routes/app_pages.dart';

class IntroController extends GetxController {
  goToHomePage() {
    Get.toNamed(Routes.main);
  }
}
