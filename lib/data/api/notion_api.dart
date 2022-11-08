import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/data/api/notion_rest_api.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NotionApi extends GetxService {
  late NotionRestAPI client;
  final dio = Dio();
  @override
  void onInit() {
    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (HttpClient client) {
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };
    dio.interceptors.add(PrettyDioLogger(request: false, requestBody: true));
    dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      dio.interceptors.requestLock.lock();
      String token = dotenv.env["NOTION_API_KEY"]!;
      options
        ..headers['Authorization'] = "Bearer $token"
        ..headers["Notion-Version"] = "2022-06-28";
      dio.interceptors.requestLock.unlock();
      handler.next(options);
    }));
    String baseUrl = dotenv.env["NOTION_BASE_URL"]!;
    client = NotionRestAPI(
      dio,
      baseUrl: baseUrl,
    );
    super.onInit();
  }
}
