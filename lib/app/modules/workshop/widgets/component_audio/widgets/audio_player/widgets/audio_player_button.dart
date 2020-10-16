import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

import '../audio_player_controller.dart';

class AudioPlayerButton extends StatelessWidget {
  final AudioPlayerController audioPlayerController;

  const AudioPlayerButton(
    this.audioPlayerController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(_build);
  }

  Widget _build() => audioPlayerController.hasError
      ? buildErrorIcon()
      : Obx(buildPlayOrPauseButton);

  Widget buildErrorIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Icon(
        Icons.error,
        color: CustomerColors.CANCELAR,
        size: 40,
      ),
    );
  }

  Widget buildPlayOrPauseButton() =>
      audioPlayerController.isPlaying ? buildPauseButton() : buildPlayButton();

  Widget buildPlayButton() {
    return buildButton(
      icon: Icons.play_circle_fill,
      onPressed: audioPlayerController.play,
    );
  }

  Widget buildPauseButton() {
    return buildButton(
      icon: Icons.pause_circle_filled,
      onPressed: audioPlayerController.pause,
    );
  }

  Widget buildButton({IconData icon, void Function() onPressed}) {
    return IconButton(
      padding: EdgeInsets.symmetric(horizontal: 8),
      icon: Icon(
        icon,
        color: CustomerColors.CELESTE_HABITAT,
        size: 40,
      ),
      onPressed: onPressed,
    );
  }
}
