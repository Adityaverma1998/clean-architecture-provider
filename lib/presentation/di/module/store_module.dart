import 'package:clean_architecture_provider/domain/usecase/posts/get_posts_usecase.dart';
import 'package:clean_architecture_provider/presentation/providers/post_provider.dart';
import 'package:clean_architecture_provider/serivce/service_locator/service_locator.dart';

mixin StoreModule {
  static Future<void> configureStoreModuleInjection() async {
    getIt.registerSingleton<PostProvider>(
      PostProvider(getIt<GetPostsUseCase>()),
    );
  }
}
