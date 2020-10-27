import 'dart:async';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habitat_ft_user/app/data/models/profile_model.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';

class ProfileRepository extends GetxService {
  String get _uid => Get.find<AuthRepository>().user.uid;

  CollectionReference get collection =>
      FirebaseFirestore.instance.collection(Profile.COLLECTION_NAME);

  DocumentReference get document => collection.doc(_uid);

  Future<DocumentSnapshot> get documentSnapShot => document.get();

  Future<Profile> get get async =>
      Profile.fromDocumentSnapshot(await documentSnapShot);
}
