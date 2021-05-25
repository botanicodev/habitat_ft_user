import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/custom_color.dart';

abstract class CustomerSnackbar {
  static error({
    String title = 'Error',
    String message = 'Ocurrio un error :(',
  }) =>
      Get.snackbar(
        title,
        message,
        icon: Icon(Icons.error_outline, color: CustomColor.CANCELAR),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: CustomColor.CELESTE_HABITAT,
        colorText: CustomColor.BLANCO,
      );
}
