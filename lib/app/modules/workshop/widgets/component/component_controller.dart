import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComponentController extends GetxController {
  Rx<Widget> _body;

  set body(Widget value) => this._body = value.obs;
  Widget get body => _body.value;
}
