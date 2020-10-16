import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:video_player/video_player.dart';

class AudioPlayerBackground extends StatelessWidget {
  final VideoPlayerController videoPlayerController;
  final List<Widget> children;

  const AudioPlayerBackground({
    Key key,
    @required this.videoPlayerController,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildVideoPlayer(),
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: CustomerColors.GRIS_05,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ],
    );
  }

  /**
   * Esto hay que ponerlo si o si, 
   * esta puesto de esta manera para que 
   * no rompa el layout
   */
  Widget buildVideoPlayer() {
    return Container(
      child: VideoPlayer(videoPlayerController),
      height: 1,
      width: 1,
    );
  }
}
