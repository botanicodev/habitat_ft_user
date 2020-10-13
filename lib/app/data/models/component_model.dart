import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class Component {
  String title;
  String resourceUrl;
  MediaType type;

  Component({
    this.title,
    this.resourceUrl,
    this.type,
  });

  Color get color {
    switch (type) {
      case MediaType.video:
        return CustomerColors.COMPLEMENTO_1;
      case MediaType.image:
        return CustomerColors.COMPLEMENTO_2;
      case MediaType.file:
        return CustomerColors.COMPLEMENTO_3;
      case MediaType.audio:
        return CustomerColors.COMPLEMENTO_4;
      default:
        return CustomerColors.CELESTE_HABITAT;
    }
  }

  IconData get icon {
    switch (type) {
      case MediaType.video:
        return Icons.videocam;
      case MediaType.image:
        return Icons.image;
      case MediaType.file:
        return Icons.file_present;
      case MediaType.audio:
        return Icons.volume_up;
      default:
        return Icons.error;
    }
  }
}
