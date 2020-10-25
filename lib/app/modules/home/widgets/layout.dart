import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget drawer;
  final List<Widget> children;

  CrossAxisAlignment get crossAxisAlignment => CrossAxisAlignment.center;

  const Layout({
    this.appBar,
    this.drawer,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}
