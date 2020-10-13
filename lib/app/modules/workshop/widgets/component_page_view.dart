import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/modules/workshop/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import 'background.dart';

class ComponentPageView extends StatelessWidget {
  final Component component;

  const ComponentPageView(
    this.component, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(
                  color: HColors.COMPLEMENTO_1,
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.videocam,
                    size: 25,
                    color: HColors.BLANCO,
                  ),
                ),
              ),
              Spacer(),
              Text(component.title, style: HStyles.TITULO_3_COMPLEMENTO_1),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
