import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';

class WorkshopService extends GetxService {
  CollectionReference _subscriptionsRef;

  @override
  void onInit() {}

  void initRef(String userId) {
    print(
        'WorkshopService => initialize collection reference: users/$userId/subscriptions <=');
    _subscriptionsRef = FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .collection('subscriptions');
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  Future<List<Workshop>> allPending() async {
    QuerySnapshot result =
        await _subscriptionsRef.where('status', isEqualTo: 'pending').get();
    return result.docs
        .map(
          (doc) => Workshop.fromJson(doc.data()),
        )
        .toList();
  }
}
