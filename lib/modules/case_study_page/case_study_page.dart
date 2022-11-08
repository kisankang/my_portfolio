import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/case_study_page/case_study_controller.dart';
import 'package:my_portfolio/widgets/parapraph.dart';

class CaseStudyPage extends GetWidget<CaseStudyController> {
  const CaseStudyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Paragraph(
      titleString: 'Case studies',
      content: SizedBox(height: 500),
    );
  }
}
