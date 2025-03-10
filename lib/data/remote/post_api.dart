import 'package:clean_architecture_provider/core/data/network/dio.dart';
import 'package:clean_architecture_provider/data/modal/post_modal.dart';
import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:clean_architecture_provider/domain/usecase/posts/create_post_usecase.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

class PostApi {
  final DioClient _dioClient;

  PostApi(this._dioClient);

  Future<List<Post>> getPosts() async {
    try {
      final response = await _dioClient.get('/posts');

      List<Post> posts =
          (response.data as List)
              .map(
                (json) => PostModal.fromJson(json).toEntity(),
              ) // Convert PostModal → Post
              .toList();

      print("Check posts are  ${posts}");

      return posts;
    } catch (e) {
      print("Error fetching posts: $e");
      rethrow;
    }
  }

  Future<Map<String, dynamic>> createPost(CreatePostParams params) async {
    try {
      final response = await _dioClient.post('/posts', data: params);
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
