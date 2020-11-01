import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class ExitButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const ExitButton({
    @required this.onPressed,
    this.text = 'Salir',
  });

  TextStyle get style => CustomerStyles.TITULO_3_BLANCO;

  @override
  Widget build(_) => FlatButton(
        child: Text(text, style: style),
        onPressed: onPressed,
      );
}
