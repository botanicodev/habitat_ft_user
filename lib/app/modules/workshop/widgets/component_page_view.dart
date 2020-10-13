import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/page_button.dart';

import '../workshop_controller.dart';
import 'background.dart';
import 'header.dart';

class ComponentPageView extends StatelessWidget {
  final WorkshopController workshopController = Get.find();
  final Component component;

  ComponentPageView(
    this.component, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Header(component: component),
          // VER DE METER UN CONTROLLER PARA CADA PAGE,
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildPreviusButton(),
              buildNextButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPreviusButton() {
    return PageButton(
      onPressed: () {
        workshopController.previusPage();
      },
      icon: Icons.arrow_back_ios,
    );
  }

  Widget buildNextButton() {
    return PageButton(
      onPressed: () {
        workshopController.nextPage();
      },
      icon: Icons.arrow_forward_ios,
    );
  }
}
