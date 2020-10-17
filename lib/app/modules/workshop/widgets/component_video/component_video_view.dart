import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_background.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_video/widgets/video_player/video_player_view.dart';

class ComponentVideoView extends StatelessWidget {
  final Component component;

  const ComponentVideoView(this.component, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentBackground(
      header: ComponentHeader(component),
      body: VideoPlayerView(component),
    );
  }
}
