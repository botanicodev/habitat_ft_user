import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/workshop_repository.dart';
import 'package:habitat_ft_user/app/utils/widgets/audio_player/audio_player_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/download_button/download_button_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/video_player/video_player_controller.dart';

import 'workshop_controller.dart';

// TODO REFACTOR
class WorkshopBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WorkshopRepository>(WorkshopRepository());
    Get.put<WorkshopController>(WorkshopController());
    Get.create(() => DownloadButtonController());
    Get.create(() => AudioPlayerController());
    Get.create(() => VideoPlayerController());
  }
}
