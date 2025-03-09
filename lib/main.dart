import 'package:clean_architecture_provider/presentation/my_app.dart';
import 'package:clean_architecture_provider/serivce/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async{
  await ServiceLocator.configureDependencies();

  runApp(const MyApp());
}

