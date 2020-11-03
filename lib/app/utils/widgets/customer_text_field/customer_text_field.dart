import 'package:flutter/material.dart';

class CustomerTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;
  final bool obscureText;
  final String labelText, errorText;
  final InputBorder border;
  final int errorMaxLines;

  const CustomerTextField({
    @required this.controller,
    @required this.labelText,
    this.onChanged,
    this.obscureText = false,
    this.errorText,
    this.border = const OutlineInputBorder(),
    this.errorMaxLines = 4,
  });
  @override
  Widget build(_) => TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: decoration,
      );

  get decoration => InputDecoration(
        border: border,
        errorMaxLines: 4,
        labelText: labelText,
        errorText: errorText,
      );
}
