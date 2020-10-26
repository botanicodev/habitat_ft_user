import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class CustomerButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final TextStyle style;
  final double elevation;
  final Color buttonColor;
  final double minWidth;
  final double height;
  final Color splashColor;

  const CustomerButton({
    @required this.onPressed,
    @required this.text,
    this.style,
    this.elevation = 0,
    this.buttonColor = CustomerColors.CELESTE_HABITAT,
    this.minWidth = 306,
    this.height = 50,
    this.splashColor = CustomerColors.CELESTE_OSCURO_2,
  });

  @override
  Widget build(BuildContext context) => ButtonTheme(
        buttonColor: buttonColor,
        minWidth: minWidth,
        height: height,
        splashColor: splashColor,
        child: RaisedButton(
          elevation: elevation,
          onPressed: onPressed,
          child: Text(text, style: defaultstyle),
        ),
      );

  TextStyle get defaultstyle =>
      style != null ? style : CustomerStyles.SUB_TITULO_1_BLANCO;
}
