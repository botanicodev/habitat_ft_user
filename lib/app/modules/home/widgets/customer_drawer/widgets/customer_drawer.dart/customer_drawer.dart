import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/customer_drawer/widgets/customer_drawer.dart/sign_out_tile/sign_out_tile.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomerDrawer extends StatelessWidget {
  CustomerDrawer();

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(top: 120, bottom: 44),
        color: CustomColor.CELESTE_OSCURO,
        child: Column(
          children: [
            ListTile(
              title: FutureBuilder(
                future: SharedPreferences.getInstance(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.getString('name') +
                        ' ' +
                        snapshot.data.getString('lastName'));
                  } else {
                    return Text('');
                  }
                },
              ),
              leading: CircleAvatar(
                backgroundColor: CustomColor.COMPLEMENTO_1,
                radius: 40,
              ),
            ),
            const Spacer(),
            const SignOutTile(),
          ],
        ),
      ),
    );
  }
}
