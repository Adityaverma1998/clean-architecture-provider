import 'dart:async';

import 'package:clean_architecture_provider/core/domain/usecase.dart';
import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:clean_architecture_provider/domain/repository/post_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_post_usecase.g.dart';

@JsonSerializable()
class CreatePostParams {
  final String title;
  final String body;
  final int userId;

  CreatePostParams({required this.body, required this.title, required this.userId});

  factory CreatePostParams.fromJson(Map<String, dynamic> json) =>
      _$CreatePostParamsFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePostParamsToJson(this);
}

class CreatePostUsecase implements UseCaseWithRequiredParams<Map<String,dynamic>, CreatePostParams> {
  final PostRepository _repository;
  
  CreatePostUsecase(this._repository);

  @override
  Future<Map<String,dynamic>> call({required CreatePostParams params}) async {
    // Call the repository method that creates a post and returns a list of posts (or a single post, depending on your logic)
    return await _repository.createPost(params);
  }
}
