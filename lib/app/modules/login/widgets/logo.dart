import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/assets.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(HAssets.LIGHT_BLUE_LOGO);
  }
}
