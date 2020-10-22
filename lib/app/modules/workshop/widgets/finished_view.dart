import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import '../workshop_controller.dart';

class FinishedView extends GetView<WorkshopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomerColors.CELESTE_HABITAT,
      body: body,
    );
  }

  get body => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            textAndIcon,
            button,
          ],
        ),
      );

  get textAndIcon => Column(
        children: [
          text,
          icon,
        ],
      );

  get text => Text('Taller completado', style: CustomerStyles.TITULO_2_BLANCO);

  get icon =>
      Icon(Icons.check_circle_outline, color: CustomerColors.BLANCO, size: 150);

  get button => FlatButton(
        child: Text('Salir', style: CustomerStyles.TITULO_3_BLANCO),
        onPressed: controller.leave,
      );
}
