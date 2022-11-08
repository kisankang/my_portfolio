import 'package:json_annotation/json_annotation.dart';
part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse<T> {
  String? object;
  List? results;
  @JsonKey(name: "next_cursor")
  var nextCursor;
  @JsonKey(name: "has_more")
  bool? hasMore;
  String? type;
  Map? page;
  String? code;
  String? message;

  BaseResponse({
    this.object,
    this.results,
    this.nextCursor,
    this.hasMore,
    this.type,
    this.page,
    this.code,
    this.message,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
