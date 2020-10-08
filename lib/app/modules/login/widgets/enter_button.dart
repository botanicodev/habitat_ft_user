import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';

import '../login_controller.dart';

class EnterButton extends GetView<LoginController> {
  const EnterButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.loading
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
