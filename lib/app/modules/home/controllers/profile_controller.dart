import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/profile_model.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';

class ProfileController extends GetxService {
  Rx<Profile> _profile = Rx<Profile>();
  StreamSubscription _subscription;

  Profile get profile => _profile.value;

  @override
  void onInit() {
    _subscription =
        find().listen((doc) => _profile.value = Profile.fromJson(doc.data()));
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    _subscription?.cancel();
  }

  Stream<DocumentSnapshot> find() {
    String uid = Get.find<AuthRepository>().user.uid;
    print('UID: ' + uid);
    return FirebaseFirestore.instance
        .collection("profiles")
        .doc(uid)
        .snapshots();
  }
}
