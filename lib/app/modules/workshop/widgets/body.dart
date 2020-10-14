import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

import 'dowload_button.dart';

class Body extends StatelessWidget {
  final Component component;
  const Body(
    this.component, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (component.mediaType) {
      case MediaType.video:
        return buildVideoBody();
      case MediaType.image:
        return buildImageBody();
      case MediaType.file:
        return buildFileBody();
      case MediaType.audio:
        return buildAudioBody();
      default:
        return Container();
    }
  }

  Widget buildVideoBody() => Container();

  Widget buildImageBody() => Image.network(component.url);

  Widget buildFileBody() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 88),
        child: DownloadButton(component),
      );

  Widget buildAudioBody() => Container();
}
