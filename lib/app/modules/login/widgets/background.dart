import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class Background extends StatelessWidget {
  final List<Widget> children;

  const Background({Key key, @required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomerColors.CELESTE_OSCURO,
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 30),
          height: 483,
          width: 340,
          decoration: BoxDecoration(
            color: CustomerColors.GRIS_01,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: children,
          ),
        ),
      ),
    );
  }
}
