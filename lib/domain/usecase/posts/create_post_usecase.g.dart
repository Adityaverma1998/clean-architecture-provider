// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePostParams _$CreatePostParamsFromJson(Map<String, dynamic> json) =>
    CreatePostParams(
      body: json['body'] as String,
      title: json['title'] as String,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$CreatePostParamsToJson(CreatePostParams instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
    };
