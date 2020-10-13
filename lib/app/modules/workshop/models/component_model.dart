import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class Component {
  String title;
  String resourceUrl;
  ComponentType type;

  Component({
    this.title,
    this.resourceUrl,
    this.type,
  });

  Color get color {
    switch (type) {
      case ComponentType.video:
        return HColors.COMPLEMENTO_1;
      case ComponentType.image:
        return HColors.COMPLEMENTO_2;
      case ComponentType.file:
        return HColors.COMPLEMENTO_3;
      case ComponentType.audio:
        return HColors.COMPLEMENTO_4;
      default:
        return HColors.CELESTE_HABITAT;
    }
  }

  IconData get icon {
    switch (type) {
      case ComponentType.video:
        return Icons.videocam;
      case ComponentType.image:
        return Icons.image;
      case ComponentType.file:
        return Icons.file_present;
      case ComponentType.audio:
        return Icons.volume_up;
      default:
        return Icons.error;
    }
  }
}
