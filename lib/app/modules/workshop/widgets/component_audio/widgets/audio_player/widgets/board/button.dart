import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const Button({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(horizontal: 8),
      icon: Icon(
        icon,
        color: CustomerColors.CELESTE_HABITAT,
        size: 40,
      ),
      onPressed: onPressed,
    );
  }
}
