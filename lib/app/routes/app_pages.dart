import 'package:habitat_ft_user/app/modules/splash_screen/splash_screen_view.dart';
import 'package:habitat_ft_user/app/modules/splash_screen/splash_screen_binding.dart';
import 'package:habitat_ft_user/app/modules/login/login_view.dart';
import 'package:habitat_ft_user/app/modules/login/login_binding.dart';
import 'package:habitat_ft_user/app/modules/home/home_view.dart';
import 'package:habitat_ft_user/app/modules/home/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
