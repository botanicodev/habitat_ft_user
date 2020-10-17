import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class CustomerButtonWithIcon extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final IconData icon;
  final void Function() onPressed;
  final Color buttonColor;
  final Color iconColor;

  const CustomerButtonWithIcon({
    @required this.text,
    @required this.icon,
    @required this.onPressed,
    this.height = 55,
    this.width = 155,
    this.buttonColor = CustomerColors.CELESTE_HABITAT,
    this.iconColor = CustomerColors.BLANCO,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ButtonTheme(
        buttonColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: RaisedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: CustomerStyles.SUB_TITULO_1_BLANCO,
              ),
              Icon(
                icon,
                color: iconColor,
              ),
            ],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
