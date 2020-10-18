import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'config/colors.dart';
import 'enums.dart';
import 'widgets/video_player/video_player.dart';
import 'widgets/customer_image.dart';
import 'widgets/audio_player/audio_player.dart';
import 'widgets/download_button/download_button.dart';

abstract class Mapper {
  static SubscriptionStatus intToStatus(int value) {
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

  static MediaType intToMediaType(int value) {
    switch (value) {
      case 0:
        return MediaType.video;
      case 1:
        return MediaType.image;
      case 2:
        return MediaType.file;
      case 3:
        return MediaType.audio;
      default:
        print('No se encontro un indice para mapear un MediaType');
        return MediaType.audio;
    }
  }

  static Color mediaTypeToColor(MediaType mediaType) {
    switch (mediaType) {
      case MediaType.video:
        return CustomerColors.COMPLEMENTO_1;
      case MediaType.image:
        return CustomerColors.COMPLEMENTO_2;
      case MediaType.file:
        return CustomerColors.COMPLEMENTO_3;
      case MediaType.audio:
        return CustomerColors.COMPLEMENTO_4;
      default:
        print('No se encontro un indice para mapear un MediaType-Color');
        return CustomerColors.CELESTE_HABITAT;
    }
  }

  static IconData mediaTypeToIconData(MediaType mediaType) {
    switch (mediaType) {
      case MediaType.video:
        return Icons.videocam;
      case MediaType.image:
        return Icons.image;
      case MediaType.file:
        return Icons.file_present;
      case MediaType.audio:
        return Icons.volume_up;
      default:
        print('No se encontro un indice para mapear un MediaType-IconData');
        return Icons.error;
    }
  }

  static Widget componentToWidget(Component component) {
    switch (component.mediaType) {
      case MediaType.video:
        return VideoPlayer(component.url);
      case MediaType.image:
        return CustomerImage(component.url);
      case MediaType.file:
        return DownloadButton(component.url);
      case MediaType.audio:
        return AudioPlayer(component.url);
      default:
        return Center(child: Text('Componente no implementado'));
    }
  }
}
