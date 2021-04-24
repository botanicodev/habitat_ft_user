import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

class Workshop {
  static const String collectionName = 'workshops';

  String id;
  String title;
  String description;
  Timestamp dateCreated;
  String editorId;
  Timestamp lastUpdate;

  Workshop({
    this.id,
    @required this.title,
    @required this.description,
    @required this.dateCreated,
    @required this.editorId,
    @required this.lastUpdate,
  });

  Workshop.fromQuery(QueryDocumentSnapshot doc) {
    Map<String, dynamic> map = doc.data();
    id = doc.id;
    title = map['title'];
    description = map['description'];
    editorId = map['editor_id'];
    dateCreated = map['date_created'];
    lastUpdate = map['last_update'];
  }

  Map<String, dynamic> toDocument() => {
        'title': this.title,
        'description': this.description,
        'editor_id': this.editorId,
        'date_created': this.dateCreated,
        'last_update': this.lastUpdate,
      };

  Workshop.fromDocument(DocumentSnapshot doc)
      : id = doc.id,
        title = doc.get('title'),
        description = doc.get('description'),
        editorId = doc.get('editor_id'),
        dateCreated = doc.get('date_created'),
        lastUpdate = doc.get('last_update');

  @override
  String toString() {
    return 'Workshop { id: $id, title: $title, description: $description, dateCreated: $dateCreated, editorId: $editorId, lastUpdate: $lastUpdate }';
  }
}
