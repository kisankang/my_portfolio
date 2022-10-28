import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/main_page/main_controller.dart';

class MainPage extends GetWidget<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text("Welcome to visit to see my portfolio")),
    );
  }
}
