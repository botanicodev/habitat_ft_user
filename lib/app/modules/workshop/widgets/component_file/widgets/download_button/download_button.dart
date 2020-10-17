import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_file/widgets/download_button/download_button_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/button_with_icon.dart';

class DownloadButton extends GetWidget<DownloadButtonController> {
  DownloadButton(String url) {
    controller.init(url);
  }

  @override
  Widget build(BuildContext context) {
    return ButtonWithIcon(
      text: 'Descargar',
      icon: Icons.cloud_download,
      onPressed: controller.download,
    );
  }
}
