import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/config/styles.dart';
import 'package:habitat_ft_user/app/services/user_profile_service.dart';

class UserTile extends GetView<UserProfileService> {
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
        title: buildTitle(),
      ),
    );
  }

  Widget buildTitle() {
    return Obx(
      () => Text(
        '${controller.profile.name.capitalizeFirst} ${controller.profile.lastname.capitalizeFirst}',
        style: HStyles.SUB_TITULO_1_BLANCO,
      ),
    );
  }
}
