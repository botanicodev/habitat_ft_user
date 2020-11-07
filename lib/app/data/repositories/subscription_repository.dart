import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/profile_repository.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

// TODO PROVIDER
class SubscriptionRepository extends GetxService {
  final _collection = Get.find<ProfileRepository>()
      .documentReference
      .collection(Subscription.COLLECTION_NAME);

  StreamSubscription listen({
    SubscriptionStatus status,
    void Function(List<Subscription> subscriptions) whenHasData,
  }) =>
      _query(status: status).snapshots().listen(
            (querySnapshot) =>
                whenHasData(SubscriptionList.byQuerySnapshot(querySnapshot)),
          );

  Query _query({SubscriptionStatus status}) => status.isNull
      ? _collection
      : _collection.where('status', isEqualTo: status.index);

  Future<void> update(Subscription subscription) =>
      _collection.doc(subscription.id).update(subscription.toJson());
}
