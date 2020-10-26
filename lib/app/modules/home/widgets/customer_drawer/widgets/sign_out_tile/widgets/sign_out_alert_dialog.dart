import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_alert_dialog.dart';

import 'alert_title.dart';
import 'sign_out_confirm_alert_dialog_buttons.dart';

class SignOutAlertDialog extends StatelessWidget {
  const SignOutAlertDialog();

  @override
  Widget build(BuildContext context) {
    return CustomerAlertDialog(
      children: [
        const SignOutTitle(),
        const SignOutConfirmAlertDialogButton(),
      ],
    );
  }
}
