import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Contraseña',
        ),
      ),
    );
  }
}