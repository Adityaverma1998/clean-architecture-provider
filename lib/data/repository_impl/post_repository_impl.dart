import 'package:clean_architecture_provider/data/remote/post_api.dart';
import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:clean_architecture_provider/domain/repository/post_repository.dart';

class PostRepositoryImpl extends PostRepository {
  final PostApi _postApi;
  PostRepositoryImpl(this._postApi);

  @override
  Future<List<Post>> getPosts() {
    return _postApi.getPosts().catchError(((onError) => throw onError));
  }
}
