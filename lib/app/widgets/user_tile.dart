import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/config/styles.dart';
import 'package:habitat_ft_user/app/services/profile_user_service.dart';

class UserTile extends GetView<ProfileUserService> {
  const UserTile({
    Key key,
  }) : super(key: key);

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
        title: buildText(),
      ),
    );
  }

  Widget buildText() {
    return Obx(
      () => Text(
        '${controller.profile.name.capitalizeFirst} ${controller.profile.lastname.capitalizeFirst}',
        style: HStyles.SUB_TITULO_1_BLANCO,
      ),
    );
  }
}
