import 'package:clean_architecture_provider/domain/entity/post.dart';
import 'package:clean_architecture_provider/domain/usecase/posts/get_posts_usecase.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier {
  final GetPostsUseCase _getPostsUseCase;

  PostProvider(this._getPostsUseCase);

  List<Post> _posts = [];
  bool _isPostLoading = false;
  String? _errorMessage;

  List<Post> get posts => _posts;
  bool get isPostLoading => _isPostLoading;
  String? get errorMessage => _errorMessage;

  // Fetch posts and handle loading and error states
  Future<void> fetchPosts() async {
    try {
      _isPostLoading = true;
      _errorMessage = null; // Reset error message before making a request
      notifyListeners();

      final result = await _getPostsUseCase.call();
      _posts = result;  // Assuming result is a List<Post>
      _isPostLoading = false;
      notifyListeners();
    } catch (e) {
      _isPostLoading = false;
      _errorMessage = 'Failed to fetch posts: $e';
      notifyListeners();
    }
  }
}
