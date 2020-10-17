import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

import '../workshop_controller.dart';

class ComponentNavigationButtons extends GetView<WorkshopController> {
  const ComponentNavigationButtons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          previusButton,
          nextButton,
        ],
      ),
    );
  }

  get previusButton => buildComponentButton(
        onPressed: controller.previusPage,
        icon: Icons.arrow_back_ios,
      );

  get nextButton => buildComponentButton(
        onPressed: controller.nextPage,
        icon: Icons.arrow_forward_ios,
      );

  Widget buildComponentButton({void Function() onPressed, IconData icon}) {
    return ButtonTheme(
      buttonColor: CustomerColors.CELESTE_HABITAT,
      splashColor: CustomerColors.CELESTE_OSCURO_2,
      minWidth: 80,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Center(
        child: RaisedButton(
          elevation: 0,
          onPressed: onPressed,
          child: Center(child: Icon(icon, color: CustomerColors.BLANCO)),
        ),
      ),
    );
  }
}
