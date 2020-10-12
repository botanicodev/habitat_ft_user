import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/models/subscription_model.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class SubscriptionListController extends GetxController {
  final _authService = Get.find<LoginController>();

  RxList<Subscription> _subscriptions = <Subscription>[].obs;
  RxBool _isLoading = true.obs;
  StreamSubscription _subscription;

  List<Subscription> get subscriptions => _subscriptions;
  bool get isLoading => _isLoading.value;

  void startLoading() => _isLoading.value = true;
  void endLoading() => _isLoading.value = false;

  void fetchByPendingStatus() => _fetch(Status.pending);
  void fetchByCompletedStatus() => _fetch(Status.completed);

  @override
  void onClose() {
    _subscription?.cancel();
  }

  void _fetch(Status status) {
    _subscription = _allByStatus(status).listen((event) {
      _subscriptions.value =
          event.docs.map((doc) => Subscription.fromJson(doc.data())).toList();
      endLoading();
    });
  }

  Stream<QuerySnapshot> _allByStatus(Status status) {
    String uid = _authService.user.uid;
    print('UID: ' + uid);
    return FirebaseFirestore.instance
        .collection("users")
        .doc(uid)
        .collection('subscriptions')
        .where('status', isEqualTo: status.index)
        .snapshots();
  }

  void onTap(Subscription subscription) {
    Get.toNamed(
      Routes.WORKSHOP_DISPLAY,
      arguments: {"workshopId": subscription.workshopId},
    );
  }
}
