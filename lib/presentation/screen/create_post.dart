import 'package:clean_architecture_provider/presentation/providers/post_provider.dart';
import 'package:clean_architecture_provider/presentation/widget/from_widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState(){
    super.initState();

  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        final postProvider = Provider.of<PostProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Create Post")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("Title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            InputField(controller: _titleController),
            const SizedBox(height: 12),
            const Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            InputField(controller: _descriptionController, ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle post creation logic here
                postProvider.createPost(_titleController.text,_descriptionController.text);
              },
              child:  Text( postProvider.isPostCreateLoading ? "loading" : "Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
