import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/modules/ability_page/ability_controller.dart';
import 'package:my_portfolio/widgets/custom_spinner.dart';
import 'package:my_portfolio/widgets/no_result_widget.dart';
import 'package:my_portfolio/widgets/parapraph.dart';

class AbilityPage extends GetWidget<AbilityController> {
  const AbilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Paragraph(
        titleString: 'Main ability',
        content: SizedBox(
          height: 200,
          child: controller.skillItems.value == null
              ? const CustomSpinner()
              : Stack(
                  children: [
                    const NoResultWidget(),
                    Container(
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                      child: ListView.builder(
                        itemCount: controller.skillItems.value?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Text(
                              controller.skillItems.value?[index].skill ??
                                  "empty $index");
                        },
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
