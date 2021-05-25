import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';

class CustomerListTile extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final Color color;
  final double height, shadowBlurRadius, shadowSpreadRadius;
  final BorderRadiusGeometry borderRaidus;
  final Widget title, leading, trailing;
  final void Function() onTap;

  const CustomerListTile({
    this.margin = const EdgeInsets.only(left: 12, right: 12, top: 12),
    this.color = CustomColor.BLANCO,
    this.height = 75,
    this.borderRaidus = const BorderRadius.all(Radius.circular(10)),
    this.shadowBlurRadius = 7,
    this.shadowSpreadRadius = 5,
    this.title,
    this.leading,
    this.trailing,
    this.onTap,
  });

  Color get shadowColor => Colors.black.withOpacity(0.1);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      constraints: BoxConstraints(
        maxWidth: 700,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRaidus,
        boxShadow: [
          BoxShadow(
            blurRadius: shadowBlurRadius,
            spreadRadius: shadowSpreadRadius,
            offset: Offset(5, 5),
            color: shadowColor,
          )
        ],
      ),
      child: Center(
        child: ListTile(
          title: title,
          leading: leading,
          trailing: trailing,
          onTap: onTap,
        ),
      ),
    );
  }
}
