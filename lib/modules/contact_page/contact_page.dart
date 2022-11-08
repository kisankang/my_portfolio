import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/contact_page/contact_controller.dart';
import 'package:my_portfolio/widgets/parapraph.dart';

class ContactPage extends GetWidget<ContactController> {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Paragraph(
      titleString: "Contact",
      content: SizedBox(height: 100),
    );
  }
}
