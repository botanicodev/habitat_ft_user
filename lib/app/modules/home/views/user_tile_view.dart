import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';
import 'package:habitat_ft_user/app/modules/home/controllers/user_tile_controller.dart';

class UserTileView extends GetView<UserTileController> {
  const UserTileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: ListTile(
        leading: ClipOval(
          child: Container(
            height: 40,
            width: 40,
            color: HColors.COMPLEMENTO_1,
          ),
        ),
        title: buildTitle(),
      ),
    );
  }

  Widget buildTitle() {
    return Obx(() {
      return Text(
          controller.profile.isNull
              ? 'Cargando...'
              : '${controller.profile.name.capitalizeFirst} ${controller.profile.lastname.capitalizeFirst}',
          style: HStyles.SUB_TITULO_1_BLANCO);
    });
  }
}
