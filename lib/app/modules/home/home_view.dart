import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'widgets/drawer_body.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habitat(logo)'), // TODO poner logo de habitat
        centerTitle: true,
      ),
      drawer: DrawerBody(),
      body: Center(child: Text('Talleres', style: TextStyle(fontSize: 20))),
    );
  }
}
