import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/config/styles.dart';
import 'package:habitat_ft_user/app/controllers/auth_controller.dart';

class SignOutTile extends StatelessWidget {
  const SignOutTile({
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                size: 35,
                color: HColors.BLANCO,
              ),
              title: Text('Cerrar sesion', style: HStyles.TITULO_3_BLANCO),
              onTap: () {
                Get.dialog(SignOutDialog());
              },
            ),
          ),
        ),
      ),
    );
  }
}

class SignOutDialog extends StatelessWidget {
  const SignOutDialog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: HColors.GRIS_01,
      content: Container(
        width: 274,
        height: 160,
        // decoration: BoxDecoration(
        //   shape: BoxShape.rectangle,
        //   borderRadius: BorderRadius.all(Radius.circular(32.0)),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '¿Desea cerrar sesion?',
              style: HStyles.TITULO_3_CELESTE,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 60,
                  icon: Icon(
                    Icons.highlight_remove_rounded,
                    color: HColors.CANCELAR,
                  ),
                  onPressed: () => Get.back(),
                ),
                IconButton(
                  iconSize: 60,
                  icon: Icon(
                    Icons.check_circle_outline_rounded,
                    color: HColors.CONFIRMAR,
                    // size: 35,
                  ),
                  onPressed: Get.find<AuthController>().signOut,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
