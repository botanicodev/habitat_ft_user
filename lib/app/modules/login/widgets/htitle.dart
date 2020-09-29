import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class HTitle extends StatelessWidget {

  final String text;

  const HTitle({
    Key key, @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: 
      GoogleFonts.spartan(
          color: HColors.CELESTE_HABITAT,
          fontSize: 30,
          fontWeight: FontWeight.w300),
    );
  }
}
