import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';

class CustomerImage extends StatelessWidget {
  final String url;

  const CustomerImage(this.url);

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
        placeholder: placeholder,
        image: url,
        imageErrorBuilder: imageErrorBuilder);
  }

  String get placeholder => CustomerAssets.LOADER;

  Widget imageErrorBuilder(context, object, stacktrace) =>
      Text('No se puede cargar la imagen en este momento :(');
}
