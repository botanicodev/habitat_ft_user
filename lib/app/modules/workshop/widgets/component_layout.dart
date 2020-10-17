import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class ComponentLayout extends StatelessWidget {
  final Widget header;
  final Widget body;

  const ComponentLayout({
    @required this.header,
    @required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          header,
          _body,
        ],
      ),
    );
  }

  get padding => const EdgeInsets.all(20);
  get margin => const EdgeInsets.all(20);
  get decoration => BoxDecoration(
        color: CustomerColors.BLANCO,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
          ),
        ],
      );
  get _body => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            body,
          ],
        ),
      );
}
