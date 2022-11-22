import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/data/models/skill_item.dart';
import 'package:my_portfolio/modules/ability_page/ability_controller.dart';
import 'package:my_portfolio/widgets/custom_spinner.dart';
import 'package:my_portfolio/widgets/no_result_widget.dart';
import 'package:my_portfolio/widgets/parapraph.dart';

class AbilityPage extends GetWidget<AbilityController> {
  const AbilityPage({super.key});

  _skillItemTile(
    BuildContext context, {
    required String skill,
    required String proficiency,
    required String description,
    required String experience,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 300,
        color: Theme.of(context).colorScheme.primary,
        child: Column(children: [
          Row(
            children: [
              Text(proficiency),
              Text(skill),
            ],
          ),
          Text(description),
          Text(experience)
        ]),
      ),
    );
  }

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
                      child: controller.skillItems.value == null ||
                              // ignore: prefer_is_empty
                              controller.skillItems.value?.length == 0
                          ? const SizedBox()
                          : Row(
                              children: List.generate(
                                controller.categoryList.length,
                                (index) {
                                  List<SkillItem> sameCategoryList =
                                      controller.getSameCategoryList(
                                          category:
                                              controller.categoryList[index]);
                                  return Column(children: [
                                    Text(controller.categoryList[index]),
                                    ...List.generate(sameCategoryList.length,
                                        ((i) {
                                      String skill = sameCategoryList[i].skill;
                                      String proficiency =
                                          (sameCategoryList[i].proficiency)
                                              .toString();
                                      String description =
                                          sameCategoryList[i].description;
                                      String experience =
                                          sameCategoryList[i].experience;
                                      return _skillItemTile(context,
                                          skill: skill,
                                          proficiency: proficiency,
                                          description: description,
                                          experience: experience);
                                    })),
                                  ]);
                                },
                              ),
                            ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
