import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/profile_model.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/profile_repository.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

// TODO PROVIDER
class SubscriptionRepository extends GetxService {
  // final _collection = Get.find<ProfileRepository>()
  //     .documentReference
  //     .collection(Subscription.COLLECTION_NAME);

  final _collectionProfiles =
      FirebaseFirestore.instance.collection(Profile.COLLECTION_NAME);

  Future<List<Subscription>> getPendingSubscriptions(
      String competitorId) async {
    return await _collectionProfiles
        .doc(competitorId)
        .collection(Subscription.COLLECTION_NAME)
        .where('status', isEqualTo: 0)
        .get()
        .then((qs) => qs.docs.map((s) => Subscription.fromQuery(s)).toList());
  }

  Future<List<Subscription>> getCompletedSubscriptions(
      String competitorId) async {
    return await _collectionProfiles
        .doc(competitorId)
        .collection(Subscription.COLLECTION_NAME)
        .where('status', isEqualTo: 1)
        .get()
        .then((qs) => qs.docs.map((s) => Subscription.fromQuery(s)).toList());
  }

  // StreamSubscription listen({
  //   SubscriptionStatus status,
  //   void Function(List<Subscription> subscriptions) whenHasData,
  // }) =>
  //     _query(status: status).snapshots().listen(
  //           (querySnapshot) =>
  //               whenHasData(SubscriptionList.byQuerySnapshot(querySnapshot)),
  //         );

  // Query _query({SubscriptionStatus status}) => status.isNull
  //     ? _collection
  //     : _collection.where('status', isEqualTo: status.index);

  // Future<void> update(Subscription subscription) =>
  //     _collection.doc(subscription.id).update(subscription.toJson());
}
