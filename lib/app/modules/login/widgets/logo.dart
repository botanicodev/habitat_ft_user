import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class Logo extends StatelessWidget {
  const Logo();

  @override
  Widget build(BuildContext context) => Image.asset(asset);

  String get asset => CustomerAssets.LIGHT_BLUE_LOGO;
}
