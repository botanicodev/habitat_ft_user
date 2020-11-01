import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import 'profile_tile_controller.dart';

class ProfileTile extends GetView<ProfileTileController> {
  final Color circleAvatarbackgroundColor;
  final double radius;

  ProfileTile({
    this.circleAvatarbackgroundColor = CustomerColors.COMPLEMENTO_1,
    this.radius = 40,
  });

  TextStyle get style => CustomerStyles.SUB_TITULO_1_BLANCO;

  @override
  Widget build(_) => ListTile(
        title: Obx(
          () => Text(controller.completeName, style: style),
        ),
        leading: CircleAvatar(
          backgroundColor: circleAvatarbackgroundColor,
          radius: radius,
        ),
      );
}
