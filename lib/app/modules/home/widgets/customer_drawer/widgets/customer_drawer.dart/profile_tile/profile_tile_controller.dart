import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/profile_model.dart';
import 'package:habitat_ft_user/app/data/repositories/profile_repository.dart';

class ProfileTileController extends GetxController {
  Rx<Profile> _profile = Rx<Profile>();

  ProfileRepository get _profileRepo => Get.find<ProfileRepository>();

  Profile get profile => _profile.value;
  String get completeName => profile.isNull
      ? 'Cargando...'
      : '${profile.name.capitalizeFirst} ${profile.lastname.capitalizeFirst}';

  @override
  void onInit() => fetch();

  void fetch() => _profileRepo.get().then(_setProfile);

  void _setProfile(Profile profile) => _profile.value = profile;
}
