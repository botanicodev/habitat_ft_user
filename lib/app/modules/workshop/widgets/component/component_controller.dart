import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComponentController extends GetxController {
  Rx<Widget> _body;
  Rx<Widget> _header;

  set body(Widget value) => this._body = value.obs;
  Widget get body => _body.value;

  set header(Widget value) => this._header = value.obs;
  Widget get header => _header.value;
}
