import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/components_view/widgets/components_page_view/navigation_bar/widgets/component/component_view.dart';

import 'config/colors.dart';
import 'enums.dart';
import 'widgets/video_player/video_player.dart';
import 'widgets/customer_image.dart';
import 'widgets/audio_player/audio_player.dart';
import 'widgets/download_button/download_button.dart';

abstract class Mapper {
  static SubscriptionStatus intToSubscriptionStatus(int value) {
    switch (value) {
      case 0:
        return SubscriptionStatus.pending;
      case 1:
        return SubscriptionStatus.completed;
      default:
        print('No se encontro un indice para mapear un Status');
        return SubscriptionStatus.pending;
    }
  }

  static ComponentMediaType intToMediaType(int value) {
    switch (value) {
      case 0:
        return ComponentMediaType.video;
      case 1:
        return ComponentMediaType.image;
      case 2:
        return ComponentMediaType.file;
      case 3:
        return ComponentMediaType.audio;
      default:
        print('No se encontro un indice para mapear un MediaType');
        return ComponentMediaType.audio;
    }
  }

  static Color mediaTypeToColor(ComponentMediaType mediaType) {
    switch (mediaType) {
      case ComponentMediaType.video:
        return CustomerColors.COMPLEMENTO_1;
      case ComponentMediaType.image:
        return CustomerColors.COMPLEMENTO_2;
      case ComponentMediaType.file:
        return CustomerColors.COMPLEMENTO_3;
      case ComponentMediaType.audio:
        return CustomerColors.COMPLEMENTO_4;
      default:
        print('No se encontro un indice para mapear un MediaType-Color');
        return CustomerColors.CELESTE_HABITAT;
    }
  }

  static IconData mediaTypeToIconData(ComponentMediaType mediaType) {
    switch (mediaType) {
      case ComponentMediaType.video:
        return Icons.videocam;
      case ComponentMediaType.image:
        return Icons.image;
      case ComponentMediaType.file:
        return Icons.file_present;
      case ComponentMediaType.audio:
        return Icons.volume_up;
      default:
        print('No se encontro un indice para mapear un MediaType-IconData');
        return Icons.error;
    }
  }

  static Widget componentToWidget(Component component) {
    switch (component.mediaType) {
      case ComponentMediaType.video:
        return VideoPlayer(component.url);
      case ComponentMediaType.image:
        return CustomerImage(component.url);
      case ComponentMediaType.file:
        return DownloadButton(component.url);
      case ComponentMediaType.audio:
        return AudioPlayer(component.url);
      default:
        print('No se encontro un indice para mapear un Component-Widget');
        return Center(child: Text('Componente no implementado'));
    }
  }

  static Component jsonToComponent(json) => Component.fromJson(json);

  static ComponentView componentToView(Component component) =>
      ComponentView(component);
}
