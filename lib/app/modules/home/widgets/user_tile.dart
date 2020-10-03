import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/controllers/auth_controller.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: ListTile(
        leading: ClipOval(
          child: Container(
            height: 40,
            width: 40,
            color: HColors.COMPLEMENTO_1,
          ),
        ),
        title: Text(
          Get.find<AuthController>().user.email, // TODO aca va el nombre y apellido del usuerio loguedo
          style: GoogleFonts.spartan(
            color: HColors.BLANCO,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
