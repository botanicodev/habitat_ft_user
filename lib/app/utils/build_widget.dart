import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/widgets/audio_player/audio_player.dart';
import 'package:habitat_ft_user/app/utils/widgets/video_player/video_player.dart';

import 'config/assets.dart';
import 'config/colors.dart';
import 'enums.dart';
import 'widgets/customer_image.dart';
import 'widgets/download_button/download_button.dart';

abstract class BuildWidget {
  static Widget componentsAppBar({
    @required void Function() onPressed,
    Widget icon = const Icon(
      Icons.arrow_back_ios,
      color: CustomerColors.BLANCO,
      size: 20,
    ),
  }) =>
      BuildWidget.appBar(leading: IconButton(icon: icon, onPressed: onPressed));

  static Widget appBar({
    Widget leading,
    Widget title,
    Color backgroundColor = CustomerColors.CELESTE_HABITAT,
  }) =>
      AppBar(
        backgroundColor: backgroundColor,
        title:
            title != null ? title : Image.asset(CustomerAssets.WHITE_LOGO_MIN),
        centerTitle: true,
        leading: leading,
      );
}
