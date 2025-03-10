import 'package:clean_architecture_provider/presentation/screen/create_post.dart';
import 'package:flutter/material.dart';

class PrimaryLayout extends StatelessWidget {
  final Widget child;
  const PrimaryLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clean Architecture App"),
     
      ),
      body: child,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Define the action here when the button is pressed
         Navigator.push(context, MaterialPageRoute(builder: (context)=> CreatePostScreen()));
        },
        child: Icon(Icons.add), // Icon for the button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Position it at the bottom-right
    
    );
  }

}