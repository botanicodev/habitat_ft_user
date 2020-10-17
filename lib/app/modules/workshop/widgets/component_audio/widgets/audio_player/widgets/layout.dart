import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:video_player/video_player.dart';

class Layout extends StatelessWidget {
  final VideoPlayerController videoPlayerController;

  final Widget buttonBoard;
  final Widget progressBar;
  final Widget duration;

  const Layout({
    @required this.videoPlayerController,
    @required this.buttonBoard,
    @required this.progressBar,
    @required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        videoPlayer,
        layout,
      ],
    );
  }

  Widget get layout => container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buttonBoard,
            progressBar,
            duration,
          ],
        ),
      );

  Widget container({Widget child}) => Container(
        height: 50,
        decoration: BoxDecoration(
          color: CustomerColors.GRIS_05,
          borderRadius: BorderRadius.circular(100),
        ),
        child: child,
      );

  /// Esto hay que ponerlo si o si.
  /// Esta puesto de esta manera para que
  /// no rompa el layout
  Widget get videoPlayer => Container(
        child: VideoPlayer(videoPlayerController),
        height: 1,
        width: 1,
      );
}
