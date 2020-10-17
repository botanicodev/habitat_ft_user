import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

class ComponentBackground extends StatelessWidget {
  final Widget header;
  final Widget body;

  const ComponentBackground({
    @required this.header,
    @required this.body,
  });

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          header,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                body,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
