import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:my_portfolio/data/models/base_response.dart';
import 'package:my_portfolio/utils/log.dart';

abstract class IBaseRepository {
  dynamic handleError(error) {
    EasyLoading.dismiss();
    switch (error.runtimeType) {
      case DioError:
        final response = BaseResponse.fromJson(JsonDecoder()
            .convert(error.response.toString()) as Map<String, dynamic>);
        logError(error.response.toString(),
            des: "DioError: ${error.requestOptions.path}");
        switch (response.code) {
          case "invalid_json":
            EasyLoading.showError(
                "The request body could not be decoded as JSON.");
            break;
          case "invalid_request_url":
            EasyLoading.showError("The request URL is not valid.");
            break;
          case "invalid_request":
            EasyLoading.showError("This request is not supported.");
            break;
          case "validation_error":
            EasyLoading.showError(
                "The request body does not match the schema for the expected parameters. Check the \"message\" property for more details.");
            break;
          case "missing_version":
            EasyLoading.showError(
                "The request is missing the required Notion-Version header. See Versioning.");
            break;
          case "unauthorized":
            EasyLoading.showError("The bearer token is not valid.");
            break;
          case "restricted_resource":
            EasyLoading.showError(
                "Given the bearer token used, the client doesn't have permission to perform this operation.N.");
            break;
          case "object_not_found":
            EasyLoading.showError(
                "Given the bearer token used, the resource does not exist. This error can also indicate that the resource has not been shared with owner of the bearer token.");
            break;
          case "conflict_error":
            EasyLoading.showError(
                "The transaction could not be completed, potentially due to a data collision. Make sure the parameters are up to date and try again.");
            break;
          case "rate_limited":
            EasyLoading.showError(
                "This request exceeds the number of requests allowed. Slow down and try again. More details on rate limits.");
            break;
          case "internal_server_error":
            EasyLoading.showError(
                "An unexpected error occurred. Reach out to Notion support.");
            break;
          case "service_unavailable":
            EasyLoading.showError(
                "Notion is unavailable. Try again later. This can occur when the time to respond to a request takes longer than 60 seconds, the maximum request timeout.");
            break;
          case "database_connection_unavailable":
            EasyLoading.showError(
                "Notion's database is unavailable or in an unqueryable state. Try again later.");
            break;
          default:
            EasyLoading.showError(response.message.toString());
            throw FormatException(
                "Error: ${error.requestOptions.path}", response.message);
        }
        break;
      default:
        EasyLoading.showError('Oops!\nSomething went wrong');
        logError(error.toString(), des: "Unknown Error");
        print("error: $error");
        throw FormatException("Error: ", error);
    }
  }
}
