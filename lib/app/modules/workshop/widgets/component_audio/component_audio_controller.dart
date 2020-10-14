import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/helper.dart';
import 'package:video_player/video_player.dart';

class ComponentAudioController extends GetxController {
  Rx<Component> _component = Rx<Component>();

  Rx<VideoPlayerController> _videoPlayerController;
  RxBool _isPlaying = false.obs;
  RxString _duration = '00:00'.obs;

  Component get component => this._component.value;
  VideoPlayerController get videoPlayerController =>
      this._videoPlayerController.value;
  bool get isPlaying => this._isPlaying.value;
  String get duration => this._duration.value;

  @override
  void onClose() {
    videoPlayerController.dispose();
  }

  void init({Component component}) async {
    _component.value = component;

    _videoPlayerController = VideoPlayerController.network(component.url).obs;

    await videoPlayerController.initialize();

    _duration.value = Helper.durationToMinutesAndSeconds(
        videoPlayerController.value.duration);

    videoPlayerController.setLooping(true);
    _videoPlayerController.value.addListener(() {
      _isPlaying.value = videoPlayerController.value.isPlaying;
    });
  }

  void play() => videoPlayerController.play();

  void pause() => videoPlayerController.pause();
}
