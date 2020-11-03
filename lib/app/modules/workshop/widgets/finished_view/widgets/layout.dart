import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class Layout extends StatelessWidget {
  final Color backgroundColor;
  final MainAxisAlignment columnMainAxisAlignment;
  final Widget text, icon, button;

  const Layout({
    this.backgroundColor = CustomerColors.CELESTE_HABITAT,
    this.columnMainAxisAlignment = MainAxisAlignment.spaceAround,
    this.text,
    this.icon,
    this.button,
  });

  @override
  Widget build(_) => Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: columnMainAxisAlignment,
            children: [
              Column(children: [text, icon]),
              button,
            ],
          ),
        ),
      );
}
