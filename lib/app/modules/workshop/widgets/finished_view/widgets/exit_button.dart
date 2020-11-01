import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class ExitButton extends GetView<WorkshopController> {
  final String text;

  const ExitButton({
    this.text = 'Salir',
  });

  TextStyle get style => CustomerStyles.TITULO_3_BLANCO;

  @override
  Widget build(_) => FlatButton(
        child: Text(text, style: style),
        onPressed: controller.leave,
      );
}
