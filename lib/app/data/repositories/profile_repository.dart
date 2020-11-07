import 'dart:async';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habitat_ft_user/app/data/models/profile_model.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';

class ProfileRepository extends GetxService {
  final _collection =
      FirebaseFirestore.instance.collection(Profile.COLLECTION_NAME);

  final _uid = Get.find<AuthRepository>().user.uid;

  Future<Profile> get() async =>
      Profile.fromDocumentSnapshot(await documentReference.get());

  DocumentReference get documentReference => _collection.doc(_uid);
}
