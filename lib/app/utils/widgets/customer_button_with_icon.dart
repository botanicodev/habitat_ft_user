import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class CustomerButtonWithIcon extends StatelessWidget {
  final double height, width;
  final String text;
  final IconData icon;
  final void Function() onPressed;
  final Color buttonColor, iconColor;
  final MainAxisAlignment rowWainAxisAlignment;
  final ShapeBorder shape;

  const CustomerButtonWithIcon({
    @required this.text,
    @required this.icon,
    @required this.onPressed,
    this.height = 55,
    this.width = 155,
    this.buttonColor = CustomerColors.CELESTE_HABITAT,
    this.iconColor = CustomerColors.BLANCO,
    this.rowWainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
  });

  TextStyle get style => CustomerStyles.SUB_TITULO_1_BLANCO;

  @override
  Widget build(_) => Container(
        height: height,
        width: width,
        child: ButtonTheme(
          buttonColor: buttonColor,
          shape: shape,
          child: RaisedButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: rowWainAxisAlignment,
              children: [
                Text(text, style: style),
                Icon(icon, color: iconColor)
              ],
            ),
          ),
        ),
      );
}
