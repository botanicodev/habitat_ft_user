import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/services/user_service.dart';
import 'package:habitat_ft_user/app/modules/login/user_model.dart' as H;

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;

  UserService _userService = Get.find<UserService>();

  Rx<User> _user = Rx<User>();
  Rx<H.User> _profile = Rx<H.User>();

  User get user => _user.value;
  H.User get profile => _profile.value;

  @override
  void onInit() {
    _user.bindStream(_auth.authStateChanges());
    _user.listen((user) async{
      _profile.value = await _userService.find(user.uid);
    });
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  signInWithEmailAndPassword(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  signOut() {
    _auth.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
