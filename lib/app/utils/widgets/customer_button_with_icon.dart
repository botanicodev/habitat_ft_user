import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class CustomerButtonWithIcon extends StatelessWidget {
  final double height, width;
  final String text;
  final IconData icon;
  final void Function() onPressed;
  final Color buttonColor, iconColor;
  final MainAxisAlignment mainAxisAlignment;
  final ShapeBorder shape;

  const CustomerButtonWithIcon({
    @required this.text,
    @required this.icon,
    @required this.onPressed,
    this.height = 55,
    this.width = 155,
    this.buttonColor = CustomerColors.CELESTE_HABITAT,
    this.iconColor = CustomerColors.BLANCO,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ButtonTheme(
        buttonColor: buttonColor,
        shape: shape,
        child: RaisedButton(
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [_text, _icon],
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }

  Widget get _text => Text(text, style: textStyle);
  Widget get _icon => Icon(
        icon,
        color: iconColor,
      );

  TextStyle get textStyle => CustomerStyles.SUB_TITULO_1_BLANCO;
}
