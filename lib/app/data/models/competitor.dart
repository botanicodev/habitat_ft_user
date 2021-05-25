import 'package:cloud_firestore/cloud_firestore.dart';

class Competitor {
  String id;
  String name;
  String lastName;
  String document;
  String email;
  String role;
  String password;

  Competitor({
    this.id,
    this.name,
    this.lastName,
    this.document,
    this.email,
    this.role,
    this.password,
  });

  Competitor.fromQuery(QueryDocumentSnapshot doc) {
    Map<String, dynamic> map = doc.data();
    id = doc.id;
    name = map['name'];
    lastName = map['lastName'];
    document = map['document'];
    email = map['email'];
    role = map['role'];
    password = map['password'];
  }

  Map<String, Object> toDocument() => {
        'name': name,
        'lastName': lastName,
        'document': document,
        'email': email,
        'role': role,
        'password': password,
      };

  @override
  String toString() {
    return 'Profile { name: $name, lastName: $lastName, document: $document, email: $email, role: $role, password: $password }';
  }
}
