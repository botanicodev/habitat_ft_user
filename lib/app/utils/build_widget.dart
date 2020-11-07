import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/assets.dart';
import 'config/colors.dart';

abstract class BuildWidget {
  static Widget appBarBackButton({
    Widget icon = const Icon(
      Icons.arrow_back_ios,
      color: CustomerColors.BLANCO,
      size: 20,
    ),
  }) =>
      BuildWidget.appBar(leading: IconButton(icon: icon, onPressed: Get.back));

  static Widget appBar({
    Widget leading,
    Widget title,
    Color backgroundColor = CustomerColors.CELESTE_HABITAT,
    double elevation = 0,
  }) =>
      AppBar(
        backgroundColor: backgroundColor,
        title:
            title != null ? title : Image.asset(CustomerAssets.WHITE_LOGO_MIN),
        centerTitle: true,
        leading: leading,
        elevation: elevation,
      );
}
