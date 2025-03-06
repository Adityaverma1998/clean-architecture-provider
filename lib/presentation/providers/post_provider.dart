import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier{

  List<Post> _posts = [];
  bool _isPostLoading = false;

  Future<void> fetchPosts() async{
    _isPostLoading = true;
    notifyListeners();
    

  }

}