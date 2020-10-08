import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/subscription_model.dart';
import 'package:habitat_ft_user/app/modules/login/services/auth_service.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class SubscriptionListController extends GetxController {
  final _authService = Get.find<AuthService>();

  RxList<Subscription> _subscriptions = <Subscription>[].obs;
  RxBool _isLoading = true.obs;
  StreamSubscription _subscription;

  List<Subscription> get subscriptions => _subscriptions;
  bool get isLoading => _isLoading.value;

  void startLoading() => _isLoading.value = true;
  void endLoading() => _isLoading.value = false;

  void fetchByPendingStatus() => fetch(Status.pending);
  void fetchByCompletedStatus() => fetch(Status.completed);

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {
    _subscription?.cancel();
  }

  void fetch(Status status) {
    _subscription = allByStatus(status).listen((event) {
      _subscriptions.value =
          event.docs.map((doc) => Subscription.fromJson(doc.data())).toList();
      endLoading();
    });
  }

  Stream<QuerySnapshot> allByStatus(Status status) {
    String uid = _authService.user.uid;
    print('UID: ' + uid);
    return FirebaseFirestore.instance
        .collection("users")
        .doc(uid)
        .collection('subscriptions')
        .where('status', isEqualTo: status.index)
        .snapshots();
  }
}
