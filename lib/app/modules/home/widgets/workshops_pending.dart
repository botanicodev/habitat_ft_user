import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'workshop_tile.dart';

class WorkshopsPending extends StatelessWidget {
  const WorkshopsPending({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.4,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i) {
          return WorkshopTile();
        },
      ),
    );
  }
}
