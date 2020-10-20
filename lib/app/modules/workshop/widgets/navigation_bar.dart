import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_icon_button.dart';

import '../workshop_controller.dart';

class NavigationBar extends GetView<WorkshopController> {
  const NavigationBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: child,
    );
  }

  get heightButtons => 40;
  get widthButtons => 80;
  get padding => const EdgeInsets.only(left: 20, right: 20, bottom: 20);
  get child => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          previusButton,
          finishButton,
          nextButton,
        ],
      );

  get previusButton => CustomerIconButton(
        height: heightButtons,
        width: widthButtons,
        onPressed: controller.previusPage,
        icon: Icons.arrow_back_ios,
      );

  //TODO REFACTOR
  get finishButton => Obx(() => controller.showFinishButton
      ? FlatButton(
          child: Text('Finalizar', style: CustomerStyles.LINK_BOTON_CANCELAR),
          onPressed: controller.finish,
        )
      : Container());

  get nextButton => CustomerIconButton(
        height: heightButtons,
        width: widthButtons,
        onPressed: controller.nextPage,
        icon: Icons.arrow_forward_ios,
      );
}
