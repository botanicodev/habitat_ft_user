import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/workshop_controller.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import 'widgets/component/component_view.dart';
import 'widgets/navigation_bar.dart';

class WorkshopView extends GetView<WorkshopController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      // TODO REFACTOR
      () => controller.isFinished
          ? Scaffold(
              backgroundColor: CustomerColors.CELESTE_HABITAT,
              body: Center(
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      'Taller completado',
                      style: CustomerStyles.TITULO_2_BLANCO,
                    ),
                    Icon(
                      Icons.check_circle_outline,
                      color: CustomerColors.BLANCO,
                      size: 150,
                    ),
                    Spacer(),
                    FlatButton(
                      child: Text(
                        'Salir',
                        style: CustomerStyles.TITULO_3_BLANCO,
                      ),
                      onPressed: controller.leave,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          : Scaffold(
              appBar: appBar,
              body: body,
            ),
    );
  }

  get appBar => BuildWidget.appBar();
  get body => Obx(
      () => controller.components.isEmpty ? circularProgressIndicator : layout);

  get circularProgressIndicator => Center(child: CircularProgressIndicator());

  get layout => Column(
        children: [
          pageView,
          navigation,
        ],
      );

  get pageView => Expanded(
        child: PageView(
          controller: controller.pageController,
          children: children,
        ),
      );

  get navigation => NavigationBar();
  get children => controller.components.map(mapComponentToWidget).toList();

  Widget mapComponentToWidget(Component component) => ComponentView(component);
}
