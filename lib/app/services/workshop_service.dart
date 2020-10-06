import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/exceptions/exceptions.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';

class WorkshopService extends GetxService {
  CollectionReference _subscriptionsRef;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void initRef(String uid) {
    print(
        'WorkshopService => initialize collection reference: users/$uid/subscriptions <=');
    _subscriptionsRef = FirebaseFirestore.instance
        .collection("users")
        .doc(uid)
        .collection('subscriptions');
  }

  Future<List<Workshop>> allPending() async {
    validateRef();
    QuerySnapshot result =
        await _subscriptionsRef.where('status', isEqualTo: 'pending').get();
    return result.docs
        .map(
          (doc) => Workshop.fromJson(doc.data()),
        )
        .toList();
  }

  void validateRef() {
    if (_subscriptionsRef.isNull) {
      throw HabitatFirebaseReferenceCallInNull(
          'Habitat error: WorkshopService.allPending: _subscriptionsRef is null. Se debe ejecutar el metodo initRef(userId).');
    }
  }
}
