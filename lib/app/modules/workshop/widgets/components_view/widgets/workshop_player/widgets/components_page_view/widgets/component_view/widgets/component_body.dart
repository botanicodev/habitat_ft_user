import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/widgets/audio_player/audio_player.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_image.dart';
import 'package:habitat_ft_user/app/utils/widgets/download_button/download_button.dart';
import 'package:habitat_ft_user/app/utils/widgets/video_player/video_player.dart';

class ComponentBody extends StatelessWidget {
  final Component component;
  final Widget defaultWidget;

  const ComponentBody(
    this.component, {
    this.defaultWidget =
        const Center(child: Text('Componente no implementado')),
  });

  @override
  Widget build(_) {
    switch (component.mediaType) {
      case ComponentMediaType.video:
        return Expanded(child: VideoPlayer(component.url));
      case ComponentMediaType.image:
        return Expanded(child: CustomerImage(component.url));
      case ComponentMediaType.file:
        return Expanded(child: DownloadButton(component.url));
      case ComponentMediaType.audio:
        return AudioPlayer(component.url);
      default:
        return defaultWidget;
    }
  }
}
