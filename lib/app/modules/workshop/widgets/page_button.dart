import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class PageButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData icon;

  const PageButton({
    Key key,
    @required this.onPressed,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: CustomerColors.CELESTE_HABITAT,
      splashColor: CustomerColors.CELESTE_OSCURO_2,
      minWidth: 80,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Center(
        child: RaisedButton(
          elevation: 0,
          onPressed: () {},
          child: Center(child: Icon(icon, color: CustomerColors.BLANCO)),
        ),
      ),
    );
  }
}
