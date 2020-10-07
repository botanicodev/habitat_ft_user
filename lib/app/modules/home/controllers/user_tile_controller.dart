import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/user_profile_model.dart';
import 'package:habitat_ft_user/app/modules/home/services/user_profile_service.dart';

class UserTileController extends GetxController {
  UserProfileService _userProfileService = Get.find<UserProfileService>();

  Rx<UserProfile> _userProfile = Rx<UserProfile>();
  StreamSubscription _subscription;

  UserProfile get profile => _userProfile.value;

  @override
  void onInit() {
    _subscription = _userProfileService
        .find()
        .listen((doc) => _userProfile.value = UserProfile.fromJson(doc.data()));
  }

  @override
  void onReady() {}

  @override
  void onClose() {
    _subscription?.cancel();
  }
}
