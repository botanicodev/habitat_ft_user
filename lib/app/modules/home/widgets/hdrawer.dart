import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/sign_out_tile.dart';

import '../views/user_tile_view.dart';

class HDrawer extends StatelessWidget {
  const HDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: HColors.CELESTE_OSCURO,
        child: Column(
          children: [
            UserTileView(),
            Spacer(),
            SignOutTile(),
          ],
        ),
      ),
    );
  }
}