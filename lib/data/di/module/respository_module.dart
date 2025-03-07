import 'package:clean_architecture_provider/data/remote/post_api.dart';
import 'package:clean_architecture_provider/data/repository_impl/post_repository_impl.dart';
import 'package:clean_architecture_provider/domain/repository/post_repository.dart';
import 'package:clean_architecture_provider/serivce/service_locator/service_locator.dart';

mixin RepositoryModule {
  static Future<void> configureRepositoryModuleInjection() async {
    getIt.registerSingleton<PostRepository>(
      PostRepositoryImpl(getIt<PostApi>()),
    );
  }
}
