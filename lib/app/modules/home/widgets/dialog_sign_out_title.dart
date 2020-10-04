import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/styles.dart';

class DialogSignOutTitle extends StatelessWidget {
  const DialogSignOutTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '¿Desea cerrar sesion?',
      style: HStyles.TITULO_3_CELESTE,
    );
  }
}
