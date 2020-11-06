import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/exit_button.dart';
import 'widgets/finished_icon.dart';
import 'widgets/finished_title.dart';
import 'widgets/layout.dart';

class FinishedView extends StatelessWidget {
  FinishedView() {
    Timer(Duration(milliseconds: 1000), Get.back);
  }

  @override
  Widget build(_) => Layout(
        text: const FinishedTitle(),
        icon: const FinishedIcon(),
        button: const ExitButton(),
      );
}
