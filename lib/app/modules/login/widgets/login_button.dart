import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/config/colors.dart';

class LoginButton extends StatelessWidget {

  final Function onPressed;

  const LoginButton({
    Key key, @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: HColors.CELESTE_HABITAT,
      minWidth: 306,
      height: 50,
      splashColor: HColors.CELESTE_OSCURO_2,
      child: RaisedButton(
        elevation: 0,
        onPressed: onPressed,
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