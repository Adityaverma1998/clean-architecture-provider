import 'package:clean_architecture_provider/domain/repository/post_repository.dart';
import 'package:clean_architecture_provider/domain/usecase/posts/create_post_usecase.dart';
import 'package:clean_architecture_provider/domain/usecase/posts/get_posts_usecase.dart';
import 'package:clean_architecture_provider/serivce/service_locator/service_locator.dart';

mixin UseCaseModule {
  static Future<void> configureUseCaseModuleInjection() async {
    //Register the use case module

  getIt.registerSingleton<GetPostsUseCase>(
      GetPostsUseCase(getIt<PostRepository>()),
    );
    getIt.registerSingleton<CreatePostUsecase>(
      CreatePostUsecase(getIt<PostRepository>())
    );
  }
}
