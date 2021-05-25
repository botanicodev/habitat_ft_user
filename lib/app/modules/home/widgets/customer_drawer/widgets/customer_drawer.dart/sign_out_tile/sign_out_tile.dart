import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import 'widgets/sign_out_alert_dialog.dart';

class SignOutTile extends StatelessWidget {
  final double height, iconSize;
  final Color color, iconColor;
  final EdgeInsetsGeometry padding;

  const SignOutTile({
    this.height = 78,
    this.color = CustomColor.CELESTE_HABITAT,
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
    this.iconColor = CustomColor.BLANCO,
    this.iconSize = 35,
  });

  String get text => 'Cerrar sesion';
  TextStyle get textStyle => CustomerStyles.TITULO_3_BLANCO;
  Icon get icon => Icon(Icons.logout, size: iconSize, color: iconColor);
  Text get title => Text(text, style: textStyle);

  void showSignOutAlertDialog() => Get.dialog(SignOutAlertDialog());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
      padding: padding,
      child: Center(
        child: ListTile(
          leading: Icon(Icons.logout, size: iconSize, color: iconColor),
          title: title,
          onTap: showSignOutAlertDialog,
        ),
      ),
    );
  }
}
