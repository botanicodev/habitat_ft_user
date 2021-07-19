import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_icon_button.dart';

import '../../../../../workshop_player_controller.dart';

class NavegationIconButton extends GetView<WorkshopPlayerController> {
  final NavigateDirection direction;
  final IconData previusIcon, nextIcon;
  final double height, width;

  const NavegationIconButton({
    @required this.direction,
    this.previusIcon = Icons.arrow_back_ios,
    this.nextIcon = Icons.arrow_forward_ios,
    this.height = 40,
    this.width = 80,
  });

  IconData get icon =>
      direction == NavigateDirection.previus ? previusIcon : nextIcon;

  @override
  Widget build(_) => CustomerIconButton(
        height: height,
        width: width,
        icon: icon,
        onPressed: () {
          controller.navigateTo(direction);
        },
      );
}
