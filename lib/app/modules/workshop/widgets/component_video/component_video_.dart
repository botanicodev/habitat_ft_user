import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_layout.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_video/widgets/video_player/video_player.dart';

class ComponentVideo extends StatelessWidget {
  final Component component;

  const ComponentVideo(this.component);

  @override
  Widget build(BuildContext context) {
    return ComponentLayout(
      header: header,
      body: body,
    );
  }

  Widget get header => ComponentHeader(component);
  Widget get body => VideoPlayer(component);
}
