import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/data/models/skill_item.dart';
import 'package:my_portfolio/data/services/notion_service.dart';

class AbilityController extends GetxController {
  Rx<List<SkillItem>?> skillItems = Rx(null);

  List<String> get categoryList {
    List<String> categoryList = [];
    if (skillItems.value != null) {
      for (var element in skillItems.value!) {
        categoryList.contains(element.category)
            ? null
            : categoryList.add(element.category);
      }
    }
    return categoryList;
  }

  List<SkillItem> getSameCategoryList({required String category}) {
    List<SkillItem> sameCategoryList = [];
    if (skillItems.value != null) {
      for (var element in skillItems.value!) {
        if (element.category == category) {
          sameCategoryList.add(element);
        }
      }
    }
    return sameCategoryList;
  }

  NotionService notionService;
  AbilityController({required this.notionService});

  getSkillData() async {
    EasyLoading.show(status: "loading".tr);
    skillItems.value = await notionService.getStillItem();
    EasyLoading.dismiss();
  }

  @override
  void onInit() {
    getSkillData();
    super.onInit();
  }
}
