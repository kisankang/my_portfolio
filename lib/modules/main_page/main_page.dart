import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/ability_page/ability_page.dart';
import 'package:my_portfolio/modules/case_study_page/case_study_page.dart';
import 'package:my_portfolio/modules/contact_page/contact_page.dart';
import 'package:my_portfolio/modules/introduction_page/introduction_page.dart';
import 'package:my_portfolio/modules/main_page/main_controller.dart';
import 'package:my_portfolio/modules/profile_page/profile_page.dart';
import 'package:my_portfolio/modules/project_page/project_page.dart';

class MainPage extends GetWidget<MainController> {
  const MainPage({super.key});

  _verticalSpacing() {
    return const SizedBox(height: 20);
  }

  _horizontalSpacing() {
    return const SizedBox(width: 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _verticalSpacing(),
              Text(
                "Kisan's portfolio",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              _verticalSpacing(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(flex: 2, child: IntroductionPage()),
                  _horizontalSpacing(),
                  const Flexible(flex: 1, child: ContactPage())
                ],
              ),
              _verticalSpacing(),
              const AbilityPage(),
              _verticalSpacing(),
              const ProjectPage(),
              _verticalSpacing(),
              const CaseStudyPage(),
              _verticalSpacing(),
              const ProfilePage(),
              _verticalSpacing(),
            ],
          ),
        ),
      ),
    );
  }
}
