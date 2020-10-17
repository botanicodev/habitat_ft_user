import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlayerController extends GetxController {
  YoutubePlayerController youtubePlayerController;

  final _youtubePlayerParams = YoutubePlayerParams(
    showFullscreenButton: true,
    interfaceLanguage: 'es',
    autoPlay: false,
  );

  void init(String initialVideoId) =>
      youtubePlayerController = YoutubePlayerController(
        initialVideoId: initialVideoId,
        params: _youtubePlayerParams,
      );

  @override
  void onClose() => youtubePlayerController.close();
}
