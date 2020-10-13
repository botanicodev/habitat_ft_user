import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../workshop_controller.dart';
import 'page_button.dart';

class NavigationButtons extends GetView<WorkshopController> {
  const NavigationButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildPreviusButton(),
        buildNextButton(),
      ],
    );
  }

  Widget buildPreviusButton() {
    return PageButton(
      onPressed: controller.previusPage,
      icon: Icons.arrow_back_ios,
    );
  }

  Widget buildNextButton() {
    return PageButton(
      onPressed: controller.nextPage,
      icon: Icons.arrow_forward_ios,
    );
  }
}
