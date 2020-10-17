import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/audio_player/audio_player_controller.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

import 'widgets/board/board.dart';
import 'widgets/layout.dart';
import 'widgets/duration.dart';
import 'widgets/progress_bar/progress_bar.dart';

class AudioPlayer extends GetWidget<AudioPlayerController> {
  AudioPlayer(String url) {
    controller.init(url);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(buildByOBx);
  }

  Widget buildByOBx() {
    switch (controller.status) {
      case PlayerStatus.loading:
        return loading;
      case PlayerStatus.error:
        return error;
      default:
        return layout;
    }
  }

  Widget get loading => Center(child: CircularProgressIndicator());
  Widget get error => Text(controller.message);
  Widget get layout => Layout(
        videoPlayerController: controller.videoPlayerController,
        buttonBoard: buttonBoard,
        progressBar: progressBar,
        duration: duration,
      );
  Widget get buttonBoard => Board(controller);
  Widget get progressBar => ProgressBar(controller);
  Widget get duration => Duration(controller);
}
