import 'package:my_portfolio/data/api/notion_api.dart';
import 'package:my_portfolio/data/models/skill_item.dart';
import 'package:my_portfolio/data/repositories/notion/inotion_repository.dart';

class NotionRepository extends INotionRepository {
  NotionApi _notionApi;
  NotionRepository({required NotionApi notionApi, required})
      : _notionApi = notionApi;

  @override
  Future<List<SkillItem>?> getDatabase({required String databaseId}) async {
    try {
      var response = await _notionApi.client.getDatabase(databaseId);

      return response.results
          ?.map((e) => SkillItem.fromMap(e["properties"]))
          .toList();
    } catch (e) {
      handleError(e);
    }
  }
}
