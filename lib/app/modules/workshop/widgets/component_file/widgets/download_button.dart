import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_file/widgets/download_button_controller.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class DownloadButton extends GetWidget<DownloadButtonController> {
  DownloadButton(String url) {
    controller.init(url);
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: CustomerColors.CELESTE_HABITAT,
      height: 55,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: RaisedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Descargar',
              style: CustomerStyles.SUB_TITULO_1_BLANCO,
            ),
            Icon(
              Icons.cloud_download,
              color: CustomerColors.BLANCO,
            ),
          ],
        ),
        onPressed: controller.download,
      ),
    );
  }
}
