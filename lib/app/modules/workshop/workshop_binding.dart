import 'package:get/get.dart';

import 'workshop_controller.dart';
import 'widgets/component_image/component_image_controller.dart';
import 'widgets/component_file/widgets/download_button_controller.dart';
import 'widgets/component_audio/widgets/audio_player/audio_player_controller.dart';
import 'widgets/component_video/widgets/video_player/video_player_controller.dart';

class WorkshopBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WorkshopController>(WorkshopController());
    Get.create(() => ComponentImageController());
    Get.create(() => DownloadButtonController());
    Get.create(() => AudioPlayerController());
    Get.create(() => VideoPlayerController());
  }
}
