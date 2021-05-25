import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

// TODO refactor de todo
class Component {
  // static const COLLECTION_NAME = 'components';
  String title;
  String url;
  ComponentMediaType mediaType;

  Component({
    this.title,
    this.url,
    this.mediaType,
  });

  Component.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    mediaType = Component.intToMediaType(json['media_type']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['media_type'] = this.mediaType.index;
    return data;
  }

  Color get color => Component.mediaTypeToColor(mediaType);

  IconData get icon => Component.mediaTypeToIconData(mediaType);

  static Component byJson(json) => Component.fromJson(json);

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
        return CustomColor.COMPLEMENTO_1;
      case ComponentMediaType.image:
        return CustomColor.COMPLEMENTO_2;
      case ComponentMediaType.file:
        return CustomColor.COMPLEMENTO_3;
      case ComponentMediaType.audio:
        return CustomColor.COMPLEMENTO_4;
      default:
        print('No se encontro un indice para mapear un MediaType-Color');
        return CustomColor.CELESTE_HABITAT;
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
}
