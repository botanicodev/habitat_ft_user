import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/profile_user_model.dart';

class ProfileUserService extends GetxService {
  CollectionReference usersRef = FirebaseFirestore.instance.collection("users");

  Future<ProfileUser> find(String uid) async {
    DocumentSnapshot doc = await usersRef.doc(uid).get();
    return ProfileUser.fromJson(doc.data());
  }
}
