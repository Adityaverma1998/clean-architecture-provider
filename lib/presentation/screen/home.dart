import 'package:clean_architecture_provider/presentation/widget/primary_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryLayout(child: Center(child: Text("Hello i am here"),));
  }
}