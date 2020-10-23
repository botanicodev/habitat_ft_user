import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/layout/background.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/layout/body.dart';

class Layout extends StatelessWidget {
  final List<Widget> children;

  const Layout({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Body(
          children: children,
        ),
      ),
    );
  }
}
