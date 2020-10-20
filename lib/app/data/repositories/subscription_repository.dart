import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

// TODO REFACTOR
class SubscriptionRepository extends GetxController {
  final users = FirebaseFirestore.instance.collection('users');

  StreamSubscription _completedStreamSubscription;
  StreamSubscription _pendingStreamSubscription;

  final RxList<Subscription> completed = <Subscription>[].obs;
  final RxList<Subscription> pending = <Subscription>[].obs;

  fetchCompleted(String uid) => _completedStreamSubscription = _allByStatus(
      uid,
      SubscriptionStatus.completed,
      (querySnapshot) =>
          mapQuerySnapshotSubscriptionToList(querySnapshot, completed));

  fetchPending(String uid) => _pendingStreamSubscription = _allByStatus(
      uid,
      SubscriptionStatus.pending,
      (querySnapshot) =>
          mapQuerySnapshotSubscriptionToList(querySnapshot, pending));

  StreamSubscription<QuerySnapshot> _allByStatus(String uid,
      SubscriptionStatus status, void Function(QuerySnapshot) onData) {
    return users
        .doc(uid)
        .collection('subscriptions')
        .where('status', isEqualTo: status.index)
        .snapshots()
        .listen(onData);
  }

  void mapQuerySnapshotSubscriptionToList(
      QuerySnapshot querySnapshot, RxList<Subscription> list) {
    list.value = querySnapshot.docs
        .map((doc) => Subscription.fromJson(doc.data()))
        .toList();
  }

  @override
  void onClose() {
    _completedStreamSubscription.cancel();
    _pendingStreamSubscription.cancel();
  }
}
