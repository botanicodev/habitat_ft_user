import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: HColors.CELESTE_HABITAT,
      minWidth: 306,
      height: 50,
      child: RaisedButton(
        // color: HColors.CELESTE_HABITAT,
        elevation: 0,
        splashColor: Colors.blueGrey,
        onPressed: () {},
        child: Text(
          'Ingresar',
          style: GoogleFonts.spartan(
            color: HColors.BLANCO,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}