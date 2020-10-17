import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_background.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';

import 'widgets/audio_player/audio_player_view.dart';

class ComponentAudioView extends StatelessWidget {
  final Component component;
  ComponentAudioView(
    this.component, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ComponentBackground(
      header: ComponentHeader(component),
      body: AudioPlayerView(component.url),
    );
  }
}
