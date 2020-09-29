import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class SubTitle extends StatelessWidget {

  final String text;
  
  const SubTitle({
    Key key, @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.spartan(
          color: HColors.GRIS_50, fontWeight: FontWeight.w600),
    );
  }
}