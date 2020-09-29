import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Text(
        'Inicio de sesion',
        style: GoogleFonts.spartan(
            color: HColors.GRIS_50, fontWeight: FontWeight.w600),
      ),
    );
  }
}