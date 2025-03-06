import 'package:clean_architecture_provider/core/data/network/dio.dart';
import 'package:clean_architecture_provider/data/modal/post_modal.dart';
import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:dio/dio.dart';

class PostApi {
  final DioClient dioClient;

  PostApi({required this.dioClient});

  Future<List<Post>> getPosts() async {
    try {
      final response = await dioClient.get('/posts');


      List<Post> posts =
          (response.data as List)
              .map(
                (json) => PostModal.fromJson(json).toEntity(),
              ) // Convert PostModal → Post
              .toList();

      return posts;
    } catch (e) {
      print("Error fetching posts: $e");
      rethrow;
    }
  }
}
