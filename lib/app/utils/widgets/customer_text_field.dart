import 'package:flutter/material.dart';

class CustomerTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;
  final bool obscureText;
  final String labelText, errorText;
  final InputBorder border;

  const CustomerTextField({
    @required this.controller,
    @required this.onChanged,
    @required this.labelText,
    this.obscureText = false,
    this.errorText,
    this.border = const OutlineInputBorder(),
  });
  @override
  Widget build(BuildContext context) => TextField(
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
