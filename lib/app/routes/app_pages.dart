import 'package:habitat_ft_user/app/modules/splashs_screen/splashs_screen_view.dart';
import 'package:habitat_ft_user/app/modules/splashs_screen/splashs_screen_binding.dart';
import 'package:habitat_ft_user/app/modules/home/home_view.dart';
import 'package:habitat_ft_user/app/modules/home/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASHS_SCREEN;

  static final routes = [
    GetPage(
      name: Routes.SPLASHS_SCREEN,
      page: () => SplashsScreenView(),
      binding: SplashsScreenBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
