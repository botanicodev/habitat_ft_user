import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/subscription/widgets/workshop_player/workshop_player_controller.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

import 'widgets/navigation_icon_button.dart';

class NavigationBar extends GetView<WorkshopPlayerController> {
  final EdgeInsetsGeometry padding;
  final MainAxisAlignment rowMainAxisAlignment;

  NavigationBar({
    this.padding = const EdgeInsets.only(left: 20, right: 20, bottom: 20),
    this.rowMainAxisAlignment = MainAxisAlignment.spaceBetween,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Obx(
        () => Row(
          mainAxisAlignment: rowMainAxisAlignment,
          children: [
            controller.currentPageStream.value == 0
                ? Container()
                : NavegationIconButton(direction: NavigateDirection.previus),
            NavegationIconButton(direction: NavigateDirection.next)
          ],
        ),
      ),
    );
  }
}
