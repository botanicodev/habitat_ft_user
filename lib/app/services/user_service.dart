import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habitat_ft_user/app/modules/login/user_model.dart';

class UserService {
  CollectionReference usersRef = FirebaseFirestore.instance.collection("users");

  Future<User> find(String uid) async {
    DocumentSnapshot doc = await usersRef.doc(uid).get();
    return User.fromJson(doc.data());
  }
}
