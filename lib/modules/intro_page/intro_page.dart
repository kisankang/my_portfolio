import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/intro_page/intro_controller.dart';
import 'package:my_portfolio/widgets/language_selector.dart';

class IntroPage extends GetWidget<IntroController> {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(top: 10, right: 10, child: LanguageSelector()),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("this_is_kisan's_portfolio".tr),
                const Icon(
                  Icons.portrait,
                  size: 100,
                ),
                TextButton.icon(
                  onPressed: () => controller.goToHomePage(),
                  icon: const Icon(Icons.login),
                  label: Text('enter'.tr),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
