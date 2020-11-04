import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';
import 'package:habitat_ft_user/app/utils/widgets/audio_player/audio_player_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/download_button/download_button_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/video_player/video_player_controller.dart';

import 'workshop_controller.dart';

class WorkshopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkshopRepository());
    Get.lazyPut(() => WorkshopController());
    Get.lazyPut(() => VideoPlayerController());
    Get.lazyPut(() => DownloadButtonController());
    Get.lazyPut(() => AudioPlayerController());
  }
}
