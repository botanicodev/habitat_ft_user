import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/competitor.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository extends GetxService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  StreamSubscription _subscription;
  final _profileCollection = FirebaseFirestore.instance.collection('profiles');

  Rx<User> _user = Rx<User>();
  User get user => _user.value;

  @override
  void onInit() {
    super.onInit();
    fetch();
  }

  Future<void> signOut() => _auth.signOut();

  void fetch() =>
      _subscription = _auth.authStateChanges().listen(onStateChange);

  void onStateChange(User usr) {
    _user = usr.obs;
    switch (Get.currentRoute) {
      case Routes.SPLASH_SCREEN:
        if (user == null) Get.offAllNamed(Routes.LOGIN);
        break;
      case Routes.LOGIN:
        if (user != null) Get.offAllNamed(Routes.HOME);
        break;
      case Routes.HOME:
        if (user == null) Get.offAllNamed(Routes.LOGIN);
        break;
    }
  }

  Future<Competitor> signInWithEmailAndPassword(
      String email, String password) async {
    Competitor currentUser = await _profileCollection
        .where('email', isEqualTo: email)
        .where('password', isEqualTo: password)
        .where('role', isEqualTo: 'user')
        .get()
        .then((s) => s.docs.map((p) => Competitor.fromQuery(p)).first);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', currentUser.name);

    return currentUser;

    // await _firebaseAuth.signInWithEmailAndPassword(
    //     email: email, password: password);
  }

  // Future<UserCredential> signInWithEmailAndPassword(
  //         String email, String password) =>
  //     _auth.signInWithEmailAndPassword(email: email, password: password);

  @override
  void onClose() => _subscription.cancel();
}
