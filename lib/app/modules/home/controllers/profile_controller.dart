import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/profile_model.dart';
import 'package:habitat_ft_user/app/modules/home/services/profile_service.dart';

class ProfileController extends GetxController {
  ProfileService _profileService = Get.find<ProfileService>();

  Rx<Profile> _profile = Rx<Profile>();
  StreamSubscription _subscription;

  Profile get profile => _profile.value;

  @override
  void onInit() {
    _subscription = _profileService
        .find()
        .listen((doc) => _profile.value = Profile.fromJson(doc.data()));
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    _subscription?.cancel();
  }
}
