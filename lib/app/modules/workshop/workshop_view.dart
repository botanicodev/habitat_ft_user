import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';

class WorkshopView extends GetView<WorkshopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildWidget.buildAppBar(),
      body: Center(
        child: Text(
          'WorkshopDisplayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
