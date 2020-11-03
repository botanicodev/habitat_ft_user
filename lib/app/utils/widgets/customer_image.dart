import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class CustomerImage extends StatelessWidget {
  final String url, placeholder;
  final BoxFit fit;
  final Widget imageErrorBuilderWidget;

  const CustomerImage(
    this.url, {
    this.placeholder = CustomerAssets.LOADER,
    this.fit = BoxFit.contain,
    this.imageErrorBuilderWidget =
        const Text('No se puede cargar la imagen en este momento :('),
  });

  @override
  Widget build(_) => Center(
        child: FadeInImage.assetNetwork(
          placeholder: placeholder,
          image: url,
          fit: fit,
          imageErrorBuilder: (c, o, s) => imageErrorBuilderWidget,
        ),
      );
}
