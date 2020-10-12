import 'package:flutter/material.dart';

import 'config/assets.dart';
import 'config/colors.dart';

abstract class BuildWidget {
  static AppBar buildAppBar() => AppBar(
        backgroundColor: HColors.CELESTE_HABITAT,
        title: Image.asset(HAssets.WHITE_LOGO_MIN),
        centerTitle: true,
      );
}
