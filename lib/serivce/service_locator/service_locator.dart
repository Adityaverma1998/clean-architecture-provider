import 'package:clean_architecture_provider/data/di/data_layer_injection.dart';
import 'package:clean_architecture_provider/domain/di/domain_layer_injection.dart';
import 'package:clean_architecture_provider/presentation/di/presentation_layer_injection.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

mixin ServiceLocator {
  static Future<void> configureDependencies() async {
    await DataLayerInjection.configureDataLayerInjection();
    await DomainLayerInjection.configureDomainLayerInjection();
    await PresentationLayerInjection.configurePresentationLayerInjection();
  }
}