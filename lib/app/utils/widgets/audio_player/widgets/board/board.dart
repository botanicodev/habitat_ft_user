import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

import '../../audio_player_controller.dart';
import 'widgets/button.dart';

// TODO REFACTOR
class Board extends StatelessWidget {
  final AudioPlayerController audioPlayerController;

  const Board(this.audioPlayerController);

  @override
  Widget build(_) => Obx(buildByObx);

  Widget buildByObx() {
    switch (audioPlayerController.status) {
      case AudioPlayerStatus.playing:
        return pauseButton;
      case AudioPlayerStatus.paused:
        return playButton;
      default:
        return errorIcon;
    }
  }

  Widget get errorIcon => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Icon(
          Icons.error_outline,
          color: CustomerColors.CANCELAR,
          size: 40,
        ),
      );

  Widget get playButton => Button(
        icon: Icons.play_circle_fill,
        onPressed: audioPlayerController.play,
      );

  Widget get pauseButton => Button(
        icon: Icons.pause_circle_filled,
        onPressed: audioPlayerController.pause,
      );
}
