import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class CustomerIconButton extends StatelessWidget {
  final double width, height, elevation;
  final IconData icon;
  final Color buttonColor, splashColor, iconColor;
  final void Function() onPressed;
  final ShapeBorder shape;

  const CustomerIconButton({
    @required this.onPressed,
    @required this.icon,
    @required this.width,
    @required this.height,
    this.elevation = 0,
    this.buttonColor = CustomerColors.CELESTE_HABITAT,
    this.splashColor = CustomerColors.CELESTE_OSCURO_2,
    this.iconColor = CustomerColors.BLANCO,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18.0)),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ButtonTheme(
        buttonColor: buttonColor,
        splashColor: splashColor,
        shape: shape,
        child: RaisedButton(
          elevation: elevation,
          onPressed: onPressed,
          child: Center(
            child: Icon(icon, color: iconColor),
          ),
        ),
      ),
    );
  }
}
