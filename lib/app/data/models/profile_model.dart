import 'package:cloud_firestore/cloud_firestore.dart';

class Profile {
  static const COLLECTION_NAME = 'profiles';
  String id;
  String name;
  String lastname;

  Profile({this.name, this.lastname});

  Profile.fromDocumentSnapshot(DocumentSnapshot doc) {
    Map<String, dynamic> json = doc.data();
    id = doc.id;
    name = json['name'];
    lastname = json['lastname'];
  }

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastname = json['lastname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['lastname'] = this.lastname;
    return data;
  }
}
