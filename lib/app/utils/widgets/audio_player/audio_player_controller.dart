import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/helper.dart';
import 'package:video_player/video_player.dart';

class AudioPlayerController extends GetxController {
  Rx<VideoPlayerController> _videoPlayerController;
  Rx<AudioPlayerStatus> _status = AudioPlayerStatus.loading.obs;
  RxString _duration = '00:00'.obs;
  RxString _message = ''.obs;

  VideoPlayerController get videoPlayerController =>
      this._videoPlayerController.value;
  AudioPlayerStatus get status => this._status.value;
  String get duration => this._duration.value;
  String get message => this._message.value;

  @override
  void onClose() => videoPlayerController.dispose();

  void init(String url) async {
    // VER DE REFACTOR
    try {
      _videoPlayerController = VideoPlayerController.network(url).obs;

      await videoPlayerController.initialize();

      _duration.value = Helper.durationToMinutesAndSeconds(
          videoPlayerController.value.duration);

      videoPlayerController.setLooping(true);
      _videoPlayerController.value.addListener(listenVideoPlayerController);
      _status.value = AudioPlayerStatus.paused;
    } catch (e) {
      catchError();
    }
  }

  void listenVideoPlayerController() =>
      _status.value = videoPlayerController.value.isPlaying
          ? AudioPlayerStatus.playing
          : AudioPlayerStatus.paused;

  void catchError() {
    _status.value = AudioPlayerStatus.error;
    _message.value = 'En este momento no se puede reproducir el audio :(';
  }

  void play() => videoPlayerController.play();

  void pause() => videoPlayerController.pause();
}
