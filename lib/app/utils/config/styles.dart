import 'package:flutter/material.dart';

import 'colors.dart';

class CustomerStyles {
  static final TITULO_1 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w300,
    // letterSpacing: -2.3,
  );

  static final TITULO_2 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    // letterSpacing: -4,
  );

  static final TITULO_3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    // letterSpacing: -4,
  );

  static final SUB_TITULO_1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    // letterSpacing: -1.3,
  );

  static final SUB_TITULO_2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    // letterSpacing: -5,
  );

  static final LECTURA = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    // letterSpacing: -5,
  );

  static final CAMPOS = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    // letterSpacing: -3.5,
  );

  static final BOTONES = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    // letterSpacing: -4,
  );

  static final LINK_BOTON = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    // letterSpacing: -4,
  );

  static final INFORMACION = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    // letterSpacing: -3.5,
  );

  static final TAGS = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w500,
    // letterSpacing: -4,
  );

  static final TITULO_1_CELESTE =
      TITULO_1.copyWith(color: CustomerColors.CELESTE_HABITAT);

  static final TITULO_1_BLANCO =
      TITULO_1.copyWith(color: CustomerColors.BLANCO);

  static final TITULO_2_CELESTE_OSCURO =
      TITULO_2.copyWith(color: CustomerColors.CELESTE_OSCURO);

  static final TITULO_3_BLANCO =
      TITULO_3.copyWith(color: CustomerColors.BLANCO);

  static final TITULO_3_CELESTE =
      TITULO_3.copyWith(color: CustomerColors.CELESTE_HABITAT);

  static final SUB_TITULO_1_BLANCO =
      SUB_TITULO_1.copyWith(color: CustomerColors.BLANCO);

  static final SUB_TITULO_2_GRIS_50 =
      SUB_TITULO_2.copyWith(color: CustomerColors.GRIS_50);

  static final BOTONES_CELESTE =
      BOTONES.copyWith(color: CustomerColors.CELESTE_HABITAT);
}
