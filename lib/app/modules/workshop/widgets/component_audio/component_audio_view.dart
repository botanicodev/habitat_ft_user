import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_background.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';
import 'package:video_player/video_player.dart';

import 'component_audio_controller.dart';

class ComponentAudioView extends GetWidget<ComponentAudioController> {
  ComponentAudioView(Component component, {Key key}) : super(key: key) {
    controller.init(component: component);
  }

  @override
  Widget build(BuildContext context) {
    return ComponentBackground(
      children: [
        ComponentHeader(controller.component),
        Expanded(
          child: VideoPlayer(controller.audioPlayerController),
        ),
      ],
    );
  }
}
