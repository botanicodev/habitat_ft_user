import 'package:flutter/material.dart';

import 'colors.dart';

class HStyles {
  static final TITULO_1 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w300,
    // letterSpacing: -2.3,
  );

  static final TITULO_1_CELESTE = TextStyle(
    color: HColors.CELESTE_HABITAT,
    fontSize: TITULO_1.fontSize,
    fontWeight: TITULO_1.fontWeight,
    // // letterSpacing: TITULO_1.letterSpacing,
  );

  static final TITULO_1_BLANCO = TextStyle(
    color: HColors.BLANCO,
    fontSize: 16,
    fontWeight: TITULO_1.fontWeight,
    // // letterSpacing: TITULO_1.letterSpacing,
  );

  static final TITULO_2 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    // letterSpacing: -4,
  );

  static final TITULO_3 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    // letterSpacing: -4,
  );

  static final TITULO_3_BLANCO = TextStyle(
    color: HColors.BLANCO,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    // letterSpacing: -4,
  );

  static final SUB_TITULO_1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    // letterSpacing: -1.3,
  );

  static final SUB_TITULO_1_BLANCO = TextStyle(
    color: HColors.BLANCO,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    // letterSpacing: -1.3,
  );

  static final SUB_TITULO_2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    // letterSpacing: -5,
  );

  static final SUB_TITULO_2_GRIS_50 = TextStyle(
    color: HColors.GRIS_50,
    fontSize: SUB_TITULO_2.fontSize,
    fontWeight: SUB_TITULO_2.fontWeight,
    // // letterSpacing: SUB_TITULO_2.letterSpacing,
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
    // letterSpacing: -4,
    decoration: TextDecoration.underline,
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
}
