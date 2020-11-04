import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayerController extends GetxController {
  YoutubePlayerController youtubePlayerController;

  void init(String initialVideoId) =>
      youtubePlayerController = YoutubePlayerController(
        initialVideoId: initialVideoId,
        params: YoutubePlayerParams(
          showFullscreenButton: true,
          interfaceLanguage: 'es',
          autoPlay: false,
        ),
      );

  @override
  void onClose() => youtubePlayerController?.close();
}
