import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/models/component_model.dart';

class WorkshopController extends GetxController {
  PageController pageController;

  RxList<Component> _components = <Component>[].obs;

  List<Component> get components => _components;

  get workshopId => Get.arguments['workshopId'];

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    fetch();
  }

  @override
  void onClose() => pageController.dispose();

  void fetch() async {
    var doc = await FirebaseFirestore.instance
        .collection("workshops")
        .doc(workshopId)
        .collection("moments")
        .get();

    doc.docs.forEach((moment) {
      List components = moment.data()['components'];
      components.forEach((component) {
        _components.add(Component.fromJson(component));
      });
    });
    // TODO FUNCIONA PERO TRAE EN CUALQUIER ORDEN, ver como ordenarlos
  }

// VER DE REFACTOR
  void previusPage() => _moveToPage(currentPage - 1);
  void nextPage() => _moveToPage(currentPage + 1);
  int get currentPage => pageController.page.round();

  void _moveToPage(int page) => pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
}
