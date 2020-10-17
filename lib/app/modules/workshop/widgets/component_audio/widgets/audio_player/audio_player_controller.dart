import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/customer_snackbar.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/helper.dart';
import 'package:video_player/video_player.dart';

class AudioPlayerController extends GetxController {
  Rx<VideoPlayerController> _videoPlayerController;
  Rx<PlayerStatus> _status = PlayerStatus.paused.obs;
  RxString _duration = '00:00'.obs;

  VideoPlayerController get videoPlayerController =>
      this._videoPlayerController.value;
  PlayerStatus get status => this._status.value;
  String get duration => this._duration.value;

  @override
  void onClose() => videoPlayerController.dispose();

  void init(String url) async {
    try {
      _videoPlayerController = VideoPlayerController.network(url).obs;

      await videoPlayerController.initialize();

      _duration.value = Helper.durationToMinutesAndSeconds(
          videoPlayerController.value.duration);

      videoPlayerController.setLooping(true);
      _videoPlayerController.value.addListener(listenVideoPlayerController);
    } catch (e) {
      catchError(e);
    }
  }

  void listenVideoPlayerController() {
    _status.value = videoPlayerController.value.isPlaying
        ? PlayerStatus.playing
        : PlayerStatus.paused;
  }

  void catchError(e) {
    _status.value = PlayerStatus.error;
    CustomerSnackbar.error(
      message: 'En este momento no se puede reproducir el audio :(',
    );
  }

  void play() => videoPlayerController.play();

  void pause() => videoPlayerController.pause();
}
