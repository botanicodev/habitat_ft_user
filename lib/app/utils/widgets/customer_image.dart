import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class CustomerImage extends StatelessWidget {
  final String url, placeholder;
  final Widget imageErrorBuilderWidget;

  const CustomerImage(
    this.url, {
    this.placeholder = CustomerAssets.LOADER,
    this.imageErrorBuilderWidget =
        const Text('No se puede cargar la imagen en este momento :('),
  });

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: placeholder,
      image: url,
      imageErrorBuilder: (c, o, s) => imageErrorBuilderWidget,
    );
  }
}
