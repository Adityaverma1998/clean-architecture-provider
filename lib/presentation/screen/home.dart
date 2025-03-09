import 'package:clean_architecture_provider/presentation/widget/primary_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:clean_architecture_provider/presentation/providers/post_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);

    // Schedule the API call to be triggered after the widget build is complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Avoid triggering API if already loading or posts are fetched
      if (postProvider.posts.isEmpty && !postProvider.isPostLoading) {
        postProvider.fetchPosts();
      }
    });

    return PrimaryLayout(
      child: Center(
        child: postProvider.isPostLoading
            ? const CircularProgressIndicator() // Show a loading indicator while posts are loading
            : postProvider.posts.isNotEmpty
                ? ListView.builder(
                    itemCount: postProvider.posts.length,
                    itemBuilder: (context, index) {
                      final post = postProvider.posts[index];
                      return ListTile(
                        title: Text(post.title),  // Assuming your Post model has a 'title' property
                        subtitle: Text(post.body), // Assuming Post model has 'body' property
                      );
                    },
                  )
                : const Text("No posts available"), // Show message if no posts are available
      ),
    );
  }
}
