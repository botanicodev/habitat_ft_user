import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/exceptions/exceptions.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

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

  Stream<QuerySnapshot> allByStatus(Status status) {
    validateRef();
    return _subscriptionsRef.where('status',isEqualTo: status.index).snapshots();
  }

  void validateRef() {
    if (_subscriptionsRef.isNull) {
      throw HabitatFirebaseReferenceCallInNull(
          'Habitat error: WorkshopService.allPending: _subscriptionsRef is null. Se debe ejecutar el metodo initRef(userId).');
    }
  }
}
