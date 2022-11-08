import 'package:dio/dio.dart';
import 'package:my_portfolio/data/models/base_response.dart';
import 'package:retrofit/http.dart';

part 'notion_rest_api.g.dart';

@RestApi()
abstract class NotionRestAPI {
  factory NotionRestAPI(Dio dio, {String baseUrl}) = _NotionRestAPI;

  @POST("/databases/{databaseId}/query")
  Future<BaseResponse> getDatabase(@Path() String databaseId);
}
