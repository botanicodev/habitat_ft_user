import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

class WorkshopRepository extends GetxService {
  final workshops = FirebaseFirestore.instance.collection('workshops');

  WorkshopRepository();

  Future<List<Component>> getAllComponents(String workshopId) async {
    List components = [];
    var momentsQuerySnapshot =
        await workshops.doc(workshopId).collection("moments").get();

    momentsQuerySnapshot.docs
        .forEach((moment) => components.addAll(moment.data()["components"]));

    components = components.map((e) => Component.fromJson(e)).toList();

    return components;
  }
}
