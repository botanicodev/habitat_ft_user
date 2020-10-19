import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComponentController extends GetxController {
  Rx<Widget> _body;
  Rx<Widget> _header;

  Widget get body => _body.value;
  Widget get header => _header.value;

  set body(Widget value) => this._body = value.obs;
  set header(Widget value) => this._header = value.obs;
}
