import 'package:clean_architecture_provider/core/data/network/dio.dart';
import 'package:clean_architecture_provider/data/modal/post_modal.dart';
import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:dio/dio.dart';

class PostApi {
  final DioClient _dioClient;

  PostApi(  this._dioClient);

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
}
