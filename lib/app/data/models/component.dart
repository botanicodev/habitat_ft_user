import 'package:meta/meta.dart';

import 'enums/mapper.dart';
import 'enums/media_type.dart';

class Component {
  int index;
  String title;
  String url;
  MediaType mediaType;
  String value;
  String locationFileInBucket;

  Component({
    @required this.title,
    @required this.url,
    @required this.index,
    @required this.mediaType,
    @required this.value,
    @required this.locationFileInBucket,
  });

  Component.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    index = json['index'];
    mediaType = Mapper.intToMediaType(json['media_type']);
    value = json['value'];
    locationFileInBucket = json['location_file_in_bucket'];
  }

  Map<String, dynamic> toJson() => {
        'title': this.title,
        'url': this.url,
        'index': this.index,
        'media_type': this.mediaType.index,
        'value': this.value,
        'location_file_in_bucket': this.locationFileInBucket,
      };

  @override
  String toString() =>
      'Component title: $title, index: $index, url: $url, mediaType: $mediaType, value: $value, locationFileInBucket: $locationFileInBucket';
}
