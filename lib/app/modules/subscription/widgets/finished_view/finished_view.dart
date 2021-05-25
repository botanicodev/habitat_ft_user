import 'package:flutter/material.dart';

import 'widgets/exit_button.dart';
import 'widgets/finished_icon.dart';
import 'widgets/finished_title.dart';
import 'widgets/layout.dart';

class FinishedView extends StatelessWidget {
  // FinishedView() {
  //   Timer(Duration(milliseconds: 2000), Get.back);
  // }

  @override
  Widget build(_) => Layout(
        text: const FinishedTitle(),
        icon: const FinishedIcon(),
        button: ExitButton(),
      );
}
