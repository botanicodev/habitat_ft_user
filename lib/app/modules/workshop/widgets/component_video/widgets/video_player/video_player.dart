import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'video_player_controller.dart';

class VideoPlayer extends GetWidget<VideoPlayerController> {
  VideoPlayer(Component component) {
    controller.init(component.url);
  }

  @override
  Widget build(BuildContext context) =>
      YoutubePlayerIFrame(controller: controller.youtubePlayerController);
}
