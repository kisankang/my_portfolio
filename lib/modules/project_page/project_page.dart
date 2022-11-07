import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/project_page/project_controller.dart';
import 'package:my_portfolio/widgets/parapraph.dart';

class ProjectPage extends GetWidget<ProjectController> {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Paragraph(
      titleString: 'Projects',
      content: SizedBox(height: 400),
    );
  }
}
