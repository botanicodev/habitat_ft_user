import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

import '../workshop_controller.dart';

class PageNavigationButtons extends GetView<WorkshopController> {
  const PageNavigationButtons({Key key}) : super(key: key);

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

class PageButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData icon;

  const PageButton({
    Key key,
    @required this.onPressed,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
