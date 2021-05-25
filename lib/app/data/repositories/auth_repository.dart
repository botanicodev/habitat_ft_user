import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/competitor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository extends GetxService {
  final _profileCollection = FirebaseFirestore.instance.collection('profiles');

  Rx<User> _user = Rx<User>();
  User get user => _user.value;

  Future<Competitor> signInWithEmailAndPassword(
      String email, String password) async {
    Competitor currentUser = await _profileCollection
        .where('email', isEqualTo: email)
        .where('password', isEqualTo: password)
        .where('role', isEqualTo: 'user')
        .get()
        .then((s) => s.docs.map((p) => Competitor.fromQuery(p)).first);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('competitorId', currentUser.id);
    await prefs.setString('name', currentUser.name);
    await prefs.setString('lastName', currentUser.lastName);

    return currentUser;
  }
}
