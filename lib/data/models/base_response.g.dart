// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) =>
    BaseResponse<T>(
      object: json['object'] as String?,
      results: json['results'] as List<dynamic>?,
      nextCursor: json['next_cursor'],
      hasMore: json['has_more'] as bool?,
      type: json['type'] as String?,
      page: json['page'] as Map<String, dynamic>?,
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BaseResponseToJson<T>(BaseResponse<T> instance) =>
    <String, dynamic>{
      'object': instance.object,
      'results': instance.results,
      'next_cursor': instance.nextCursor,
      'has_more': instance.hasMore,
      'type': instance.type,
      'page': instance.page,
      'code': instance.code,
      'message': instance.message,
    };
