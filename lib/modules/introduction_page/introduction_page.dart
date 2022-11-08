import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/introduction_page/introduction_controller.dart';
import 'package:my_portfolio/widgets/parapraph.dart';

class IntroductionPage extends GetWidget<IntroductionController> {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Paragraph(
      titleString: "Flutter developer",
      content: SizedBox(height: 100),
    );
  }
}
