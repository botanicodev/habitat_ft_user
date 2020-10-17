import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'widgets/audio_player/audio_player.dart';

class ComponentAudio extends StatelessWidget {
  final Component component;
  ComponentAudio(this.component);

  @override
  Widget build(BuildContext context) {
    return AudioPlayer(component.url);
  }
}
