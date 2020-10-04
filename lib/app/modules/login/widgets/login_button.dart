import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/config/styles.dart';

import '../login_controller.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.loading.value
          ? CircularProgressIndicator()
          : ButtonTheme(
              buttonColor: HColors.CELESTE_HABITAT,
              minWidth: 306,
              height: 50,
              splashColor: HColors.CELESTE_OSCURO_2,
              child: RaisedButton(
                elevation: 0,
                onPressed: controller.login,
                child: Text(
                  'Ingresar',
                  style: HStyles.TITULO_1_BLANCO,
                ),
              ),
            ),
    );
  }
}
