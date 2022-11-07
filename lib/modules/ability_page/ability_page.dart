import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/ability_page/ability_controller.dart';
import 'package:my_portfolio/widgets/parapraph.dart';

class AbilityPage extends GetWidget<AbilityController> {
  const AbilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Paragraph(
      titleString: 'Main ability',
      content: SizedBox(height: 200),
    );
  }
}
