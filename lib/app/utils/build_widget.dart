import 'package:flutter/material.dart';

import 'config/assets.dart';
import 'config/colors.dart';

abstract class BuildWidget {
  static AppBar appBar() => AppBar(
        backgroundColor: CustomerColors.CELESTE_HABITAT,
        title: Image.asset(CustomerAssets.WHITE_LOGO_MIN),
        centerTitle: true,
      );
}
