import 'package:get/get.dart';
import 'package:my_portfolio/modules/main_page/main_binding.dart';
import 'package:my_portfolio/modules/main_page/main_page.dart';
import 'package:my_portfolio/modules/intro_page/intro_binding.dart';
import 'package:my_portfolio/modules/intro_page/intro_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.intro,
      page: () => const IntroPage(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
  ];
}
