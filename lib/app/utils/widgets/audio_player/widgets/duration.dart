import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import '../audio_player_controller.dart';

class Duration extends StatelessWidget {
  final AudioPlayerController controller;

  const Duration(this.controller);

  @override
  Widget build(_) => Padding(
        padding: padding,
        child: child,
      );

  EdgeInsetsGeometry get padding => const EdgeInsets.symmetric(horizontal: 15);
  Widget get child => Obx(text);

  Widget text() => Text(
        controller.duration,
        style: CustomerStyles.TAGS_CELESTE,
      );
}
