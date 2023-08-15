import 'package:flutter/material.dart';
class TextInputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextInputType;
  final TextEditingController editingController;

  const TextInputField({super.key, required this.hintText, required this.isPassword, required this.editingController, this.TextInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.editingController,
      decoration: InputDecoration(
        hintText: this.hintText,
        border: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context)),
        focusedBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context)),
        enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context)),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      obscureText: this.isPassword,
      keyboardType: TextInputType,
    );
  }
}
