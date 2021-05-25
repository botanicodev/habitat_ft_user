// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:habitat_ft_user/app/modules/home/home_controller.dart';
// import 'package:habitat_ft_user/app/utils/config/custom_color.dart';
// import 'package:habitat_ft_user/app/utils/config/styles.dart';

// import 'profile_tile_controller.dart';

// class ProfileTile extends StatelessWidget {
//   final Color circleAvatarbackgroundColor;
//   final double radius;

//   final controller = Get.find<HomeController>();

//   ProfileTile({
//     this.circleAvatarbackgroundColor = CustomColor.COMPLEMENTO_1,
//     this.radius = 40,
//   });

//   TextStyle get style => CustomerStyles.SUB_TITULO_1_BLANCO;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Obx(
//         () => Text(controller.competitor.name, style: style),
//       ),
//       leading: CircleAvatar(
//         backgroundColor: circleAvatarbackgroundColor,
//         radius: radius,
//       ),
//     );
//   }
// }
