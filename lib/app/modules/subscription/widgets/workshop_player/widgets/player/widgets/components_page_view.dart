import 'package:flutter/material.dart';

class ComponentsPageView extends StatelessWidget {
  final PageController pageController;
  final List<Widget> componentList;
  final ScrollPhysics physics;

  const ComponentsPageView({
    @required this.pageController,
    @required this.componentList,
    this.physics = const NeverScrollableScrollPhysics(),
  });

  @override
  Widget build(_) => Expanded(
        child: PageView(
          controller: pageController,
          children: componentList,
          physics: physics,
        ),
      );
}
