import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_background.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';
import 'package:video_player/video_player.dart';

import 'component_audio_controller.dart';
import 'widgets/component_reproductor_button.dart';

class ComponentAudioView extends GetWidget<ComponentAudioController> {
  ComponentAudioView(Component component, {Key key}) : super(key: key) {
    controller.init(component: component);
  }

  @override
  Widget build(BuildContext context) {
    return ComponentBackground(
      children: [
        ComponentHeader(controller.component),
        Spacer(),
        buildReproductor(),
        Expanded(
          child: VideoPlayer(controller.videoPlayerController),
        ),
      ],
    );
  }

  Container buildReproductor() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: CustomerColors.GRIS_05,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildButton(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: CustomerColors.GRIS_25,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: CustomerColors.CELESTE_OSCURO,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 15),
            child: Obx(
              () => Text(
                controller.duration,
                style: CustomerStyles.TAGS_CELESTE,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Obx buildButton() {
    return Obx(() {
      if (controller.isPlaying)
        return buildPauseButton();
      else
        return buildPlayButton();
    });
  }

  Widget buildPlayButton() {
    return ComponentReproductorButton(
      icon: Icons.play_circle_fill,
      onPressed: controller.play,
    );
  }

  Widget buildPauseButton() {
    return ComponentReproductorButton(
      icon: Icons.pause_circle_filled,
      onPressed: controller.pause,
    );
  }
}
