import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import 'component.dart';

class Moment {
  static const String collectionName = 'moments';

  String id;
  String title;
  int index;
  var components = [];

  Moment({
    this.id,
    @required this.title,
    @required this.components,
    @required this.index,
  });

  Moment.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String;
    // components = mapToList(json['components']);
    index = json['index'] as int;
  }

  Moment.fromQuery(QueryDocumentSnapshot doc) {
    Map<String, dynamic> map = doc.data();
    id = doc.id;
    title = map['title'];
    index = map['index'];
    components = map['components'];
  }

  Moment.fromDocument(DocumentSnapshot doc)
      : id = doc.id,
        title = doc.get('title'),
        components = [];

  Map<String, Object> toDocument() => {
        'title': title,
        'index': index,
        'components': components.map((c) => c.toJson()).toList(),
      };

  List<Component> mapToList(List<dynamic> list) {
    return list.map((e) => Component.fromJson(e)).toList();
  }

  @override
  String toString() {
    return 'Moment { id: $id, title: $title, index $index, components: $components}';
  }
}
