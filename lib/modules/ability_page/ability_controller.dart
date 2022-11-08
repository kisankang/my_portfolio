import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/data/models/skill_item.dart';
import 'package:my_portfolio/data/repositories/notion/inotion_repository.dart';

class AbilityController extends GetxController {
  Rx<List<SkillItem>?> skillItems = Rx(null);

  INotionRepository notionRepository;
  AbilityController({required this.notionRepository});

  getSkillData() async {
    String databaseId = dotenv.env["NOTION_DATABASE_ID_SKILL"]!;
    EasyLoading.show(status: "loading".tr);
    skillItems.value =
        await notionRepository.getDatabase(databaseId: databaseId);
    EasyLoading.dismiss();
  }

  @override
  void onInit() {
    getSkillData();
    super.onInit();
  }
}
