import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

class ExitButton extends StatelessWidget {
  final String text;

  ExitButton({
    this.text = 'Salir',
  });

  final controller = Get.find<HomeController>();

  TextStyle get style => CustomerStyles.TITULO_3_BLANCO;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Text(text, style: style),
        onTap: () {
          controller.getCompletedSubscriptions();
          controller.getPendingSubscriptions();
          Get.back();
        },
      ),
    );
  }
}
