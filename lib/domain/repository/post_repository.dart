import 'package:clean_architecture_provider/domain/entity/post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();
}