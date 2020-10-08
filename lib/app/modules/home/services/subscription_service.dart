import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/login/services/auth_service.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class SubscriptionService extends GetxService {
  final _authService = Get.find<AuthService>();
  CollectionReference _usersRef =
      FirebaseFirestore.instance.collection("users");

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  Stream<QuerySnapshot> allByStatus(Status status) {
    String uid = _authService.user.uid;
    print('UID: ' + uid);
    return _usersRef
        .doc(uid)
        .collection('subscriptions')
        .where('status', isEqualTo: status.index)
        .snapshots();
  }
}
