import 'package:my_portfolio/data/models/base_response.dart';
import 'package:my_portfolio/data/models/skill_item.dart';
import 'package:my_portfolio/data/repositories/notion/inotion_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NotionService {
  NotionService({required INotionRepository notionRepository}) {
    _notionRepository = notionRepository;
  }
  late INotionRepository _notionRepository;

  Future<List<SkillItem>?> getStillItem() async {
    List<SkillItem>? result;
    String databaseId = dotenv.env["NOTION_DATABASE_ID_SKILL"]!;
    BaseResponse<dynamic> response =
        await _notionRepository.getDatabase(databaseId: databaseId);
    result = response.results?.map((e) => SkillItem.fromMap(e)).toList();
    return result;
  }
}
