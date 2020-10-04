import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/styles.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';

import 'widgets/home_drawer.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habitat(logo)'), // TODO poner logo de habitat
        centerTitle: true,
      ),
      drawer: HomeDrawer(),
      body: Center(child: Text('Talleres', style: HStyles.TITULO_1_CELESTE)),
    );
  }
}
