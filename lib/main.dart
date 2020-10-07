import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habitat_ft_user/app/modules/root/root_binding.dart';

import 'app/routes/app_pages.dart';

void main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Habitat",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      initialBinding: RootBinding(),
      getPages: AppPages.routes,
      theme: ThemeData(
        textTheme: GoogleFonts.spartanTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
