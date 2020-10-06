import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/exceptions/exceptions.dart';
import 'package:habitat_ft_user/app/models/user_profile_model.dart';

class UserProfileService extends GetxService {
  DocumentReference _userRef;

  Rx<UserProfile> _userProfile = Rx<UserProfile>();

  UserProfile get profile => _userProfile.value;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void initRef(String uid) async {
    print(
        'UserProfileService => initialize collection reference: users/$uid <=');
    _userRef = FirebaseFirestore.instance.collection("users").doc(uid);
    _userProfile.value = await find();
  }

  Future<UserProfile> find() async {
    validateRef();
    DocumentSnapshot doc = await _userRef.get();
    return UserProfile.fromJson(doc.data());
  }

  void validateRef() {
    if (_userRef.isNull) {
      throw HabitatFirebaseReferenceCallInNull(
          'Habitat error: UserProfileService.find: _userRef is null. Se debe ejecutar el metodo initRef(userId).');
    }
  }
}
