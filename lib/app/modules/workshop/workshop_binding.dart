import 'package:get/get.dart';

import 'workshop_controller.dart';
import 'widgets/component_video/component_video_controller.dart';
import 'widgets/component_image/component_image_controller.dart';
import 'widgets/component_file/component_file_controller.dart';
import 'widgets/component_audio/widgets/audio_player/audio_player_controller.dart';

class WorkshopBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WorkshopController>(WorkshopController());
    Get.create(() => ComponentVideoController());
    Get.create(() => ComponentImageController());
    Get.create(() => ComponentFileController());
    Get.create(() => AudioPlayerController());
  }
}
