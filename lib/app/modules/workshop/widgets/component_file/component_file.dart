import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

import 'widgets/download_button/download_button.dart';

class ComponentFile extends StatelessWidget {
  final Component component;
  ComponentFile(this.component);

  @override
  Widget build(BuildContext context) {
    return DownloadButton(component.url);
  }
}
