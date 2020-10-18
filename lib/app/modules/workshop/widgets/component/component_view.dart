import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/widgets/audio_player/audio_player.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_image.dart';
import 'package:habitat_ft_user/app/utils/widgets/download_button/download_button.dart';
import 'package:habitat_ft_user/app/utils/widgets/video_player/video_player.dart';

import 'component_controller.dart';
import 'widgets/header.dart';
import 'widgets/layout.dart';

class ComponentView extends GetWidget<ComponentController> {
  final Component component;

  ComponentView.video(this.component) {
    controller.body = VideoPlayer(component.url);
  }

  ComponentView.image(this.component) {
    controller.body = CustomerImage(component.url);
  }

  ComponentView.file(this.component) {
    controller.body = DownloadButton(component.url);
  }

  ComponentView.audio(this.component) {
    controller.body = AudioPlayer(component.url);
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      header: header,
      body: body,
    );
  }

  get header => Obx(() => Header(component));

  get body => Obx(() => controller.body);
}
