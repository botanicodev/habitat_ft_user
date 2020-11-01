import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/finished_view/widgets/exit_button.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/finished_view/widgets/layout.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/finished_view/widgets/finished_title.dart';

import 'widgets/finished_icon.dart';

class FinishedView extends StatelessWidget {
  const FinishedView();

  @override
  Widget build(_) => Layout(
        text: const FinishedTitle(),
        icon: const FinishedIcon(),
        button: const ExitButton(),
      );
}
