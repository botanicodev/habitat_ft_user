import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import 'alert.dart';

class SignOut extends StatelessWidget {
  const SignOut({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 84),
      child: Container(
        height: 78,
        color: CustomerColors.CELESTE_HABITAT,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                size: 35,
                color: CustomerColors.BLANCO,
              ),
              title: Text('Cerrar sesion', style: CustomerStyles.TITULO_3_BLANCO),
              onTap: () {
                Get.dialog(Alert());
              },
            ),
          ),
        ),
      ),
    );
  }
}
