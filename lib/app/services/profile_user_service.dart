import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/profile_user_model.dart';

class ProfileUserService extends GetxService {
  CollectionReference usersRef = FirebaseFirestore.instance.collection("users");

  Rx<ProfileUser> _profileUser = Rx<ProfileUser>();

  ProfileUser get profile => _profileUser.value;
  set profile(ProfileUser profileUser) => _profileUser.value = profileUser;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  Future<ProfileUser> find(String uid) async {
    DocumentSnapshot doc = await usersRef.doc(uid).get();
    return ProfileUser.fromJson(doc.data());
  }

  Future<void> initProfile(String uid) async {
    print('ProfileUserService => fetch profile - userid: $uid <=');
    _profileUser.value = await this.find(uid);
  }
}
