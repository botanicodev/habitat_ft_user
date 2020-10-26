import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/customer_drawer/widgets/profile_tile/profile_tile_controller.dart';

class ProfileTile extends GetView<ProfileTileController> {
  final Color circleAvatarbackgroundColor;
  final double radius;

  ProfileTile({
    this.circleAvatarbackgroundColor = CustomerColors.COMPLEMENTO_1,
    this.radius = 40,
  });

  @override
  Widget build(BuildContext context) =>
      ListTile(leading: leading, title: title);

  Widget get leading => CircleAvatar(
        backgroundColor: circleAvatarbackgroundColor,
        radius: radius,
      );

  Widget get title => Obx(
        () => Text(
          controller.completeName,
          style: CustomerStyles.SUB_TITULO_1_BLANCO,
        ),
      );
}
