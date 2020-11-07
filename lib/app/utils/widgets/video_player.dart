import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayer extends StatelessWidget {
  final YoutubePlayerController controller;

  const VideoPlayer({
    @required this.controller,
  });

  @override
  Widget build(_) => YoutubePlayerIFrame(controller: controller);

  static YoutubePlayerController newController(String initialVideoId) =>
      YoutubePlayerController(
        initialVideoId: initialVideoId,
        params: YoutubePlayerParams(
          showFullscreenButton: true,
          interfaceLanguage: 'es',
          autoPlay: false,
        ),
      );
}
