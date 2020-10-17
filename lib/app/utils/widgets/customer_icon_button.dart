import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class CustomerIconButton extends StatelessWidget {
  final double width, height, elevation;
  final IconData icon;
  final Color buttonColor, splashColor;
  final void Function() onPressed;

  const CustomerIconButton({
    @required this.onPressed,
    @required this.icon,
    @required this.width,
    @required this.height,
    this.elevation = 0,
    this.buttonColor = CustomerColors.CELESTE_HABITAT,
    this.splashColor = CustomerColors.CELESTE_OSCURO_2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ButtonTheme(
        buttonColor: buttonColor,
        splashColor: splashColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: RaisedButton(
          elevation: elevation,
          onPressed: onPressed,
          child: Center(
            child: Icon(
              icon,
              color: CustomerColors.BLANCO,
            ),
          ),
        ),
      ),
    );
  }
}
