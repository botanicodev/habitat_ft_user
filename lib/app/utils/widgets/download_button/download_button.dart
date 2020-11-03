import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/utils/widgets/download_button/download_button_controller.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_button_with_icon.dart';

class DownloadButton extends GetWidget<DownloadButtonController> {
  final String text;
  final IconData icon;

  DownloadButton(
    String url, {
    this.text = 'Descargar',
    this.icon = Icons.cloud_download,
  }) {
    controller.init(url);
  }

  @override
  Widget build(_) => Center(
        child: CustomerButtonWithIcon(
          text: text,
          icon: icon,
          onPressed: controller.download,
        ),
      );
}
