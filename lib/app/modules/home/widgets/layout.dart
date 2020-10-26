import 'package:flutter/material.dart';

import 'separator.dart';

class Layout extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget drawer,
      title,
      separator,
      pendingSubscriptions,
      completedSubscriptions;

  CrossAxisAlignment get crossAxisAlignment => CrossAxisAlignment.center;

  const Layout({
    this.appBar,
    this.drawer,
    this.title,
    this.pendingSubscriptions,
    this.completedSubscriptions,
    this.separator = const Separator(),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: [
            title,
            pendingSubscriptions,
            separator,
            completedSubscriptions
          ],
        ),
      ),
    );
  }
}
