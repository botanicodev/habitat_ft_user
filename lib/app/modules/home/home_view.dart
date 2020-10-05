import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/config/styles.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/widgets/hdrawer.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HColors.CELESTE_HABITAT,
        title: Image.asset('assets/logo/LogoAppBarWhite.png'),
        centerTitle: true,
      ),
      drawer: HDrawer(),
      body: Center(child: Text('Talleres', style: HStyles.TITULO_1_CELESTE)),
    );
  }
}
