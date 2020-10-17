import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_layout.dart';
import 'package:habitat_ft_user/app/modules/workshop/widgets/component_header.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class ComponentImage extends StatelessWidget {
  final Component component;
  ComponentImage(this.component);

  @override
  Widget build(BuildContext context) {
    return ComponentLayout(
      header: header,
      body: body,
    );
  }

  Widget get header => ComponentHeader(component);
  Widget get body => FadeInImage.assetNetwork(
        placeholder: placeholder,
        image: component.url,
        imageErrorBuilder: imageErrorBuilder,
      );

  String get placeholder => CustomerAssets.LOADER;

  Widget imageErrorBuilder(context, object, stacktrace) =>
      Text('No se puede cargar la imagen en este momento :(');
}
