import 'package:clean_architecture_provider/domain/usecase/posts/create_post_usecase.dart';
import 'package:clean_architecture_provider/domain/usecase/posts/get_posts_usecase.dart';
import 'package:clean_architecture_provider/presentation/screen/home.dart';
import 'package:clean_architecture_provider/presentation/providers/post_provider.dart';
import 'package:clean_architecture_provider/serivce/service_locator/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Registering PostProvider in the provider list
        ChangeNotifierProvider(create: (_) => PostProvider(getIt<GetPostsUseCase>(),getIt<CreatePostUsecase>())),
        // Add other providers here as needed
      ],
      child: MaterialApp(
        title: "Flutter Clean Architecture",
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
