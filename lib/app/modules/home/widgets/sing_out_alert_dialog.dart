import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/hdialog.dart';

import 'sign_out_alert_dialog_title.dart';
import 'sing_out_alert_dialog_buttons.dart';

class SignOutAlertDialog extends StatelessWidget {
  const SignOutAlertDialog({
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
            SignOutAlertDialogTitle(),
            SingOutAlertDialogButtons(),
          ],
        ),
      ),
    );
  }
}
