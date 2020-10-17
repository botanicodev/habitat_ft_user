import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_file/widgets/download_button/download_button_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_button_with_icon.dart';

class DownloadButton extends GetWidget<DownloadButtonController> {
  DownloadButton(String url) {
    controller.init(url);
  }

  @override
  Widget build(BuildContext context) {
    return CustomerButtonWithIcon(
      text: text,
      icon: icon,
      onPressed: controller.download,
    );
  }

  String get text => 'Descargar';
  IconData get icon => Icons.cloud_download;
}
