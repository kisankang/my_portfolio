import 'package:get/get.dart';
import 'package:my_portfolio/modules/ability_page/ability_binding.dart';
import 'package:my_portfolio/modules/ability_page/ability_page.dart';
import 'package:my_portfolio/modules/case_study_page/case_study_binding.dart';
import 'package:my_portfolio/modules/case_study_page/case_study_page.dart';
import 'package:my_portfolio/modules/contact_page/contact_binding.dart';
import 'package:my_portfolio/modules/contact_page/contact_page.dart';
import 'package:my_portfolio/modules/introduction_page/introduction_binding.dart';
import 'package:my_portfolio/modules/introduction_page/introduction_page.dart';
import 'package:my_portfolio/modules/main_page/main_binding.dart';
import 'package:my_portfolio/modules/main_page/main_page.dart';
import 'package:my_portfolio/modules/profile_page/profile_binding.dart';
import 'package:my_portfolio/modules/profile_page/profile_page.dart';
import 'package:my_portfolio/modules/project_page/project_binding.dart';
import 'package:my_portfolio/modules/project_page/project_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.main,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.introduction,
      page: () => const IntroductionPage(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: Routes.contact,
      page: () => const ContactPage(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: Routes.ability,
      page: () => const AbilityPage(),
      binding: AbilityBinding(),
    ),
    GetPage(
      name: Routes.project,
      page: () => const ProjectPage(),
      binding: ProjectBinding(),
    ),
    GetPage(
      name: Routes.case_study,
      page: () => const CaseStudyPage(),
      binding: CaseStudyBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}
