import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(CustomerAssets.LIGHT_BLUE_LOGO);
  }
}
