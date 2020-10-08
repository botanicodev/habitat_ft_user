import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/hdialog.dart';

import 'alert_title.dart';
import 'sing_out_alert_buttons.dart';

class SignOutAlert extends StatelessWidget {
  const SignOutAlert({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HDialog(
      content: Container(
        width: 274,
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AlertTitle('¿Desea cerrar sesion?'),
            SingOutAlertButtons(),
          ],
        ),
      ),
    );
  }
}
