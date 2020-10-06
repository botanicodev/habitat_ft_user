import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/services/auth_service.dart';
import 'package:habitat_ft_user/app/services/workshop_service.dart';

import 'app/routes/app_pages.dart';
import 'app/services/user_profile_service.dart';

void main() async {
  initServices();
  runApp(MyApp());
}

void initServices() {
  print('Initialize services =>');
  Get.put<UserProfileService>(UserProfileService());
  Get.put<AuthService>(AuthService());
  Get.put<WorkshopService>(WorkshopService());
  print('<= Initialize services');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Habitat",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        textTheme: GoogleFonts.spartanTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
