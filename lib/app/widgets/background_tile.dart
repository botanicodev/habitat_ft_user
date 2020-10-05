import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class BackgroundTile extends StatelessWidget {
  final Widget child;

  const BackgroundTile({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      width: 350,
      height: 75,
      decoration: BoxDecoration(
        color: HColors.BLANCO,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
