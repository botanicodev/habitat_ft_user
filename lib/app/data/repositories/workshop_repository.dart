import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

class WorkshopRepository extends GetxController {
  final workshops = FirebaseFirestore.instance.collection('workshops');

  Future<List<Component>> getAllComponents(String workshopId) async {
    List components = [];

    var momentsQuerySnapshot =
        await workshops.doc(workshopId).collection("moments").get();

    momentsQuerySnapshot.docs.forEach(
      (moment) => components.addAll(moment.data()["components"]),
    );

    return components.map(Mapper.jsonToComponent).toList();
  }
}
