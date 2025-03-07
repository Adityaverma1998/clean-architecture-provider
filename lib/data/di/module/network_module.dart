import 'package:clean_architecture_provider/core/data/network/dio.dart';
import 'package:clean_architecture_provider/data/remote/post_api.dart';
import 'package:clean_architecture_provider/serivce/service_locator/service_locator.dart';

mixin NetworkModule {

  static Future<void> configureNetworkModuleInjection() async {

    // dio:---------------------------------------------------------------------
      getIt.registerLazySingleton<DioClient>(() => DioClient());

      
      
      // Api Registration 
          getIt.registerSingleton(PostApi(getIt<DioClient>()));


  }
}
