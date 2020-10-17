import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_audio/widgets/audio_player/audio_player_controller.dart';

import 'widgets/layout.dart';
import 'widgets/board/widgets/board.dart';
import 'widgets/progress_bar/progress_bar.dart';
import 'widgets/duration.dart';

class AudioPlayerView extends GetWidget<AudioPlayerController> {
  AudioPlayerView(String url) {
    controller.init(url);
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      videoPlayerController: controller.videoPlayerController,
      buttonBoard: buttonBoard,
      progressBar: progressBar,
      duration: duration,
    );
  }

  Widget get buttonBoard => Board(controller);
  Widget get progressBar => ProgressBar(controller);
  Widget get duration => Duration(controller);
}
