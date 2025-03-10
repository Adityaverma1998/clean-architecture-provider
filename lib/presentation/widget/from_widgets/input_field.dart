import 'package:flutter/material.dart';

 class InputField extends StatelessWidget {
  final TextEditingController controller;
    final ValueChanged? onChanged;

  const InputField({super.key, required this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
    );
  }
}