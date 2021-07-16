import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/profile_model.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';

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

  Future<void> update(String competitorId, Subscription subscription) =>
      _collectionProfiles
          .doc(competitorId)
          .collection(Subscription.COLLECTION_NAME)
          .doc(subscription.id)
          .update(subscription.toJson());
}
