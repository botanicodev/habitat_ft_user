import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

class Component {
  String title;
  String url;
  MediaType mediaType;

  Component({
    this.title,
    this.url,
    this.mediaType,
  });

  Component.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    mediaType = Mapper.intToMediaType(json['media_type']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['media_type'] = this.mediaType.index;
    return data;
  }

  Color get color => Mapper.mediaTypeToColor(mediaType);

  IconData get icon => Mapper.mediaTypeToIconData(mediaType);
}
