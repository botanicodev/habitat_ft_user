import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class ComponentReproductorButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const ComponentReproductorButton({
    Key key,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

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
