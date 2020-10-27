import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/profile_repository.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

class SubscriptionRepository extends GetxService {
  DocumentReference get _profileDocument =>
      Get.find<ProfileRepository>().document;

  CollectionReference get collection =>
      _profileDocument.collection(Subscription.COLLECTION_NAME);

  StreamSubscription all(
    SubscriptionStatus status,
    void Function(List<Subscription> subscriptions) onSubscriptions,
  ) =>
      collection
          .where(
            'status',
            isEqualTo: status.index,
          )
          .snapshots()
          .listen((querySnapshot) => onSubscriptions(_toList(querySnapshot)));

  Future<void> complete(String workshopId) => _document(workshopId)
      .update({'status': SubscriptionStatus.completed.index});

  DocumentReference _document(String workshopId) => collection.doc(workshopId);

  List<Subscription> _toList(QuerySnapshot querySnapshot) =>
      querySnapshot.docs.map(Subscription.onQueryDocumentSnapshot).toList();
}
