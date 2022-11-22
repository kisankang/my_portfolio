import 'package:my_portfolio/data/api/notion_api.dart';
import 'package:my_portfolio/data/models/base_response.dart';
import 'package:my_portfolio/data/repositories/notion/inotion_repository.dart';

class NotionRepository extends INotionRepository {
  final NotionApi _notionApi;
  NotionRepository({required NotionApi notionApi, required})
      : _notionApi = notionApi;

  @override
  Future<BaseResponse<dynamic>> getDatabase(
      {required String databaseId}) async {
    try {
      BaseResponse<dynamic> response =
          await _notionApi.client.getDatabase(databaseId);
      return response;
    } catch (e) {
      throw handleError(e);
    }
  }
}
