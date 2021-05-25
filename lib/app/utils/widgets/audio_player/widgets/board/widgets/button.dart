import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

// TODO REFACTOR
class Button extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const Button({this.icon, this.onPressed});

  @override
  Widget build(_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: IconButton(
          padding: EdgeInsets.all(0),
          icon: Icon(
            icon,
            color: CustomColor.CELESTE_HABITAT,
            size: 40,
          ),
          onPressed: onPressed,
        ),
      );
}
