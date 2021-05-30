import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class CustomerConfirmAlertButton extends StatelessWidget {
  final MainAxisAlignment rowMainAxisAlignment;
  final VoidCallback onConfirmPressed, onCancelPressed;
  final Widget confirmIcon, cancelIcon;
  final double iconSize;

  const CustomerConfirmAlertButton({
    @required this.onConfirmPressed,
    @required this.onCancelPressed,
    this.rowMainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.iconSize = 60,
    this.confirmIcon = const Icon(
      Icons.highlight_remove_rounded,
      color: CustomColor.CANCELAR,
    ),
    this.cancelIcon = const Icon(
      Icons.check_circle_outline_rounded,
      color: CustomColor.CONFIRMAR,
    ),
  });

  @override
  Widget build(_) => Row(
        mainAxisAlignment: rowMainAxisAlignment,
        children: [confirm, cancel],
      );

  IconButton get confirm => button(
        size: iconSize,
        icon: confirmIcon,
        onPressed: onCancelPressed,
      );

  IconButton get cancel => button(
        size: iconSize,
        icon: cancelIcon,
        onPressed: onConfirmPressed,
      );

  IconButton button({size, icon, onPressed}) => IconButton(
        iconSize: size,
        icon: icon,
        onPressed: onPressed,
      );
}
