import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class CustomerConfirmAlertButton extends StatelessWidget {
  final MainAxisAlignment rowMainAxisAlignment;
  final void Function() onConfirmPressed, onCancelPressed;
  final Widget confirmIcon, cancelIcon;
  final double iconSize;

  const CustomerConfirmAlertButton({
    @required this.onConfirmPressed,
    @required this.onCancelPressed,
    this.rowMainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.iconSize = 60,
    this.confirmIcon = const Icon(
      Icons.highlight_remove_rounded,
      color: CustomerColors.CANCELAR,
    ),
    this.cancelIcon = const Icon(
      Icons.check_circle_outline_rounded,
      color: CustomerColors.CONFIRMAR,
    ),
  });

  @override
  Widget build(BuildContext context) => Row(
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
