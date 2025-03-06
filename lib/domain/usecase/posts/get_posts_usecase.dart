import 'package:clean_architecture_provider/core/domain/usecase.dart';
import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:clean_architecture_provider/domain/repository/post_repository.dart';

class GetPostsUseCase extends UseCase<List<Post>, void> {
  final PostRepository _postRepository;

  GetPostsUseCase(this._postRepository);

  @override
  Future<List<Post>> call({void params}) {
    return _postRepository.getPosts();
  }
}
