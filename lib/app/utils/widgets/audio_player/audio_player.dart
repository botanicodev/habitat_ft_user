import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/audio_player/audio_player_controller.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_loading.dart';

import 'widgets/board/board.dart';
import 'widgets/layout.dart';
import 'widgets/duration.dart';
import 'widgets/progress_bar/progress_bar.dart';

class AudioPlayer extends GetView<AudioPlayerController> {
  AudioPlayer(String url) {
    controller.init(url);
  }

  @override
  Widget build(_) => Obx(() {
        switch (controller.status) {
          case AudioPlayerStatus.loading:
            return const CustomerLoading();
          case AudioPlayerStatus.error:
            return Text(controller.message);
          default:
            return Layout(
              videoPlayerController: controller.videoPlayerController,
              buttonBoard: Board(controller),
              progressBar: ProgressBar(controller),
              duration: Duration(controller),
            );
        }
      });
}
