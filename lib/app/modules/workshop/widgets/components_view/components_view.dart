import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/build_widget.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_loading.dart';

import '../../workshop_controller.dart';
import 'widgets/components_page_view/components_page_view.dart';

class ComponentsView extends GetView<WorkshopController> {
  const ComponentsView();

  @override
  Widget build(_) => Scaffold(
        appBar: BuildWidget.componentsAppBar(onPressed: controller.leave),
        body: Obx(
          () => controller.components.isEmpty
              ? const CustomerLoading()
              : const ComponentsPageView(),
        ),
      );
}
