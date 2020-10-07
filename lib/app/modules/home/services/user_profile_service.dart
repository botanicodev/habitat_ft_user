import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/services/auth_service.dart';

class UserProfileService extends GetxService {
  CollectionReference _userRef = FirebaseFirestore.instance.collection("users");
  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  Stream<DocumentSnapshot> find() {
    String uid = Get.find<AuthService>().user.uid;
    print('UID: ' + uid);
    return _userRef.doc(uid).snapshots();
  }
}
