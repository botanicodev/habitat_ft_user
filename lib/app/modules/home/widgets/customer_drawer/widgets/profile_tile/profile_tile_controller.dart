import 'dart:async';

import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/profile_model.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';
import 'package:habitat_ft_user/app/data/repositories/profile_repository.dart';

class ProfileTileController extends GetxController {
  Rx<Profile> _profile = Rx<Profile>();

  ProfileRepository get _profileRepository => Get.find<ProfileRepository>();

  String get _uid => Get.find<AuthRepository>().user.uid;
  Profile get profile => _profile.value;
  String get completeName => profile.isNull
      ? 'Cargando...'
      : '${profile.name.capitalizeFirst} ${profile.lastname.capitalizeFirst}';

  void _setProfile(Profile profile) => _profile.value = profile;

  @override
  void onInit() => fetch();

  void fetch() => _profileRepository.getProfile(_uid).then(_setProfile);
}
