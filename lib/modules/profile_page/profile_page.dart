import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/profile_page/profile_controller.dart';
import 'package:my_portfolio/widgets/parapraph.dart';

class ProfilePage extends GetWidget<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Paragraph(
        titleString: 'Profile', content: SizedBox(height: 200));
  }
}
