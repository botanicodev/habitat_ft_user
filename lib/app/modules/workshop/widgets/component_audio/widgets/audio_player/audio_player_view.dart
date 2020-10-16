import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_audio/widgets/audio_player/audio_player_controller.dart';

import 'widgets/audio_player_background.dart';
import 'widgets/audio_player_button.dart';
import 'widgets/audio_player_progress_bar.dart';
import 'widgets/audio_player_duration.dart';

class AudioPlayerView extends GetWidget<AudioPlayerController> {
  final String url;

  AudioPlayerView(this.url) {
    controller.init(url);
  }

  @override
  Widget build(BuildContext context) {
    return AudioPlayerBackground(
      videoPlayerController: controller.videoPlayerController,
      children: [
        AudioPlayerButton(controller),
        AudioPlayerProgressBar(controller),
        AudioPlayerDuration(controller),
      ],
    );
  }
}
