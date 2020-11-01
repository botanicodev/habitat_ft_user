import 'package:flutter/material.dart';

import '../../../utils/widgets/separator.dart';

class Layout extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final CrossAxisAlignment columnCrossAxisAlignment;
  final Widget drawer,
      title,
      separator,
      pendingSubscriptions,
      completedSubscriptions;

  const Layout({
    this.appBar,
    this.columnCrossAxisAlignment = CrossAxisAlignment.center,
    this.drawer,
    this.title,
    this.pendingSubscriptions,
    this.completedSubscriptions,
    this.separator = const Separator('Completados'),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            crossAxisAlignment: columnCrossAxisAlignment,
            children: [
              title,
              pendingSubscriptions,
              separator,
              completedSubscriptions
            ],
          ),
        ),
      ),
    );
  }
}
