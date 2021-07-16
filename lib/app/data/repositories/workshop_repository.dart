import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/data/models/moment.dart';
import 'package:habitat_ft_user/app/data/models/workshop.dart';

// TODO REFACTOR
class WorkshopRepository extends GetxService {
  final workshops =
      FirebaseFirestore.instance.collection(Workshop.collectionName);

  final _firestore =
      FirebaseFirestore.instance.collection(Workshop.collectionName);

  Future<List<Moment>> getAllMoments(String workshopId) async {
    var momentsQuerySnapshot = await _firestore
        .doc(workshopId)
        .collection("moments")
        .orderBy("index")
        .get();

    return momentsQuerySnapshot.docs.map((m) => Moment.fromQuery(m)).toList();
  }

  Future<List<Component>> getAllComponents(String workshopId) async {
    List<Component> components = [];
    List<Moment> moments = [];

    moments = await getAllMoments(workshopId);

    for (var m in moments) {
      for (var c in m.components) {
        components.add(new Component(
          momentId: m.id,
          title: c['title'],
          mediaType: Component.intToMediaType(c['media_type']),
          url: c['url'],
        ));
      }
    }

    return components;
  }
}
