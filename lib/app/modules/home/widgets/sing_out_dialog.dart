import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/widgets/hdialog.dart';

import 'dialog_sign_out_title.dart';
import 'sing_out_dialog_buttons.dart';

class SignOutDialog extends StatelessWidget {
  const SignOutDialog({
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
            DialogSignOutTitle(),
            SingOutDialogButtons(),
          ],
        ),
      ),
    );
  }
}
