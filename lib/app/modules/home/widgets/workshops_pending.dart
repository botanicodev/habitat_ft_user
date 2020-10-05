import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';

import 'workshop_tile.dart';

class WorkshopsPending extends StatelessWidget {
  final List<Workshop> list;

  const WorkshopsPending({
    Key key,
    @required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hasWorkshop()) {
      return Text('No posee talleres pendientes por realizar');
    } else {
      return Container(
        height: Get.height * 0.4,
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, i) {
            return WorkshopTile(workshop: list[i]);
          },
        ),
      );
    }
  }

  bool hasWorkshop() => list == null || list.length == 0;
}
