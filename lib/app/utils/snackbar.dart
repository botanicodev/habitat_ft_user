import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/colors.dart';

abstract class CustomerSnackbar {
  static error({
    String title = 'Error',
    String message = 'Ocurrio un error :(',
  }) =>
      Get.snackbar(
        title,
        message,
        icon: Icon(Icons.error_outline, color: CustomerColors.CANCELAR),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: CustomerColors.CELESTE_HABITAT,
        colorText: CustomerColors.BLANCO,
      );
}
