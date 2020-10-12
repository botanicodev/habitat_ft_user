import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/workshop_display/workshop_display_controller.dart';

class WorkshopDisplayView extends GetView<WorkshopDisplayController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WorkshopDisplayView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WorkshopDisplayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
