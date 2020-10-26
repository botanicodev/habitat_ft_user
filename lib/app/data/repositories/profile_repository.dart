import 'dart:async';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habitat_ft_user/app/data/models/profile_model.dart';

class ProfileRepository extends GetxService {
  final _profiles =
      FirebaseFirestore.instance.collection(Profile.COLLECTION_NAME);

  Future<DocumentSnapshot> getProfileDocumentSnapShot(String uid) async =>
      await _profiles.doc(uid).get();

  Future<Profile> getProfile(String uid) async =>
      Profile.fromDocumentSnapshot(await getProfileDocumentSnapShot(uid));
}
