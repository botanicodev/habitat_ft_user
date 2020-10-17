import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_background.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';

import 'widgets/audio_player/audio_player.dart';

class ComponentAudio extends StatelessWidget {
  final Component component;
  ComponentAudio(this.component);

  @override
  Widget build(BuildContext context) {
    return ComponentBackground(
      header: header,
      body: body,
    );
  }

  Widget get header => ComponentHeader(component);
  Widget get body => AudioPlayer(component.url);
}
