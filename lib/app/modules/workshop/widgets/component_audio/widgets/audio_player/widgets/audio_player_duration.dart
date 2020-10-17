import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import '../audio_player_controller.dart';

class AudioPlayerDuration extends StatelessWidget {
  final AudioPlayerController controller;

  const AudioPlayerDuration(this.controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 15),
      child: Obx(text),
    );
  }

  Widget text() => Text(
        controller.duration,
        style: CustomerStyles.TAGS_CELESTE,
      );
}
