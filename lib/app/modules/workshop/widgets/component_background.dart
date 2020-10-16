import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class ComponentBackground extends StatelessWidget {
  final Widget header;
  final Widget body;

  const ComponentBackground({
    Key key,
    @required this.header,
    @required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: CustomerColors.BLANCO,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
        children: [
          header,
          Spacer(),
          body,
          Spacer(),
        ],
      ),
    );
  }
}
