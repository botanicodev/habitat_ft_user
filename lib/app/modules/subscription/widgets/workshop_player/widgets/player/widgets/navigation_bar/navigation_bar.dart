import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

import 'widgets/navigation_icon_button.dart';

class NavigationBar extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final MainAxisAlignment rowMainAxisAlignment;

  const NavigationBar({
    this.padding = const EdgeInsets.only(left: 20, right: 20, bottom: 20),
    this.rowMainAxisAlignment = MainAxisAlignment.spaceBetween,
  });

  @override
  Widget build(_) => Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: rowMainAxisAlignment,
          children: [
            NavegationIconButton(direction: NavigateDirection.previus),
            NavegationIconButton(direction: NavigateDirection.next)
          ],
        ),
      );
}
