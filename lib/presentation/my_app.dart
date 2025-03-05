import 'package:clean_architecture_provider/presentation/screen/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Clean Architecture",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}