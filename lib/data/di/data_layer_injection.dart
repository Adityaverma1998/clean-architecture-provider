import 'package:clean_architecture_provider/data/di/module/network_module.dart';
import 'package:clean_architecture_provider/data/di/module/respository_module.dart';

mixin DataLayerInjection {
  static Future<void> configureDataLayerInjection() async {
    // await LocalModule.configureLocalModuleInjection();
    await NetworkModule.configureNetworkModuleInjection();
    await RepositoryModule.configureRepositoryModuleInjection();
  }
}