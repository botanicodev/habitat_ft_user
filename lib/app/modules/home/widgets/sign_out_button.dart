import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/controllers/auth_controller.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 84),
      child: Container(
        height: 78,
        color: HColors.CELESTE_HABITAT,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                size: 35,
                color: HColors.BLANCO,
              ),
              title: Text(
                'Cerrar sesion',
                style: GoogleFonts.spartan(
                  color: HColors.BLANCO,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: Get.find<AuthController>().signOut,
            ),
          ),
        ),
      ),
    );
  }
}
