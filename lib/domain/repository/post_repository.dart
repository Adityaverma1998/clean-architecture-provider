import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:clean_architecture_provider/domain/usecase/posts/create_post_usecase.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();
  Future<Map<String,dynamic>> createPost(CreatePostParams params);
}