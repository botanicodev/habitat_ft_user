import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'video_player_controller.dart';

class VideoPlayer extends GetWidget<VideoPlayerController> {
  VideoPlayer(String url) {
    controller.init(url);
  }

  @override
  Widget build(_) =>
      YoutubePlayerIFrame(controller: controller.youtubePlayerController);
}
