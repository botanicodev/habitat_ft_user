import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/services/auth_service.dart';

class WorkshopService extends GetxService {
  AuthService _authService = Get.find<AuthService>();
  CollectionReference usersRef = FirebaseFirestore.instance.collection("users");

  Future<List<Workshop>> allPending() async {
    QuerySnapshot result = await usersRef
        .doc(_authService.user.uid)
        .collection('subscriptions')
        .where('status', isEqualTo: 'pending')
        .get();
    return result.docs
        .map(
          (doc) => Workshop.fromJson(doc.data()),
        )
        .toList();
  }
}
