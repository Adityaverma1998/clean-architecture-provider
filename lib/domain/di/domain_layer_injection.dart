
import 'package:clean_architecture_provider/domain/di/%20module/usecase_module.dart';

mixin DomainLayerInjection {
  static Future<void> configureDomainLayerInjection() async {
    await UseCaseModule.configureUseCaseModuleInjection();
  }
}
