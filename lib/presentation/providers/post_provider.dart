import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:clean_architecture_provider/domain/usecase/posts/get_posts_usecase.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier{
  final GetPostsUseCase _getPostsUseCase;

  PostProvider(this._getPostsUseCase);

  List<Post> _posts = [];
  bool _isPostLoading = false;

  Future<void> fetchPosts() async{
    _isPostLoading = true;
    notifyListeners();
     _getPostsUseCase.call();


  }

}