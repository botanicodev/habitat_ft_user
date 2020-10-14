import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:video_player/video_player.dart';

class ComponentAudioController extends GetxController {
  Rx<Component> _component = Rx<Component>();

  Rx<VideoPlayerController> _audioPlayerController;

  get component => this._component.value;

  get audioPlayerController => this._audioPlayerController.value;

  @override
  void onClose() {
    audioPlayerController.dispose();
  }

  void init({Component component}) async {
    _component.value = component;

    _audioPlayerController = VideoPlayerController.network(component.url).obs;

    await audioPlayerController.initialize();

    audioPlayerController.setLooping(true);
  }
}
