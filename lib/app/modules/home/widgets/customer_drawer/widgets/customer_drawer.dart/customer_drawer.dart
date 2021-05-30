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
        padding: const EdgeInsets.only(bottom: 44),
        color: CustomColor.CELESTE_OSCURO,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                margin: EdgeInsets.only(left: 15, top: 40, bottom: 40),
                child: GestureDetector(
                  child: Icon(
                    Icons.close,
                    size: 35,
                    color: Colors.white,
                  ),
                  onTap: () => Get.back(),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25, right: 10.0),
                  child: CircleAvatar(
                    backgroundColor: CustomColor.COMPLEMENTO_1,
                    radius: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FutureBuilder(
                    future: SharedPreferences.getInstance(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data.getString('name') +
                              ' ' +
                              snapshot.data.getString('lastName'),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        );
                      } else {
                        return Text('');
                      }
                    },
                  ),
                )
              ],
            ),
            const Spacer(),
            const SignOutTile(),
          ],
        ),
      ),
    );
  }
}
