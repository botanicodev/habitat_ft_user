import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CustomerTextFieldController extends GetxController {
  TextEditingController _textFieldController = TextEditingController();

  TextEditingController get textFieldController => _textFieldController;

  get errorTextValue;
  set errorTextValue(String value);

  get text => textFieldController.text;
  set text(String value) => textFieldController.text = value;

  String errorText() => errorTextValue == null ? null : errorTextValue;

  String errorTextAndClean() {
    text = '';
    return errorText();
  }

  void onChange(String value) {
    if (errorText() != null) errorTextValue = '';
  }

  @override
  void onClose() => _textFieldController.dispose();
}
