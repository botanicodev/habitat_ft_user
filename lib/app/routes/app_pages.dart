import 'package:habitat_ft_user/app/modules/root/root_view.dart';
import 'package:habitat_ft_user/app/modules/root/root_binding.dart';
import 'package:habitat_ft_user/app/modules/login/login_view.dart';
import 'package:habitat_ft_user/app/modules/login/login_binding.dart';
import 'package:habitat_ft_user/app/modules/splashs_screen/splashs_screen_view.dart';
import 'package:habitat_ft_user/app/modules/splashs_screen/splashs_screen_binding.dart';
import 'package:habitat_ft_user/app/modules/home/home_view.dart';
import 'package:habitat_ft_user/app/modules/home/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.ROOT;

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
    GetPage(
      name: Routes.LOGIN, 
      page:()=> LoginView(), 
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.ROOT, 
      page:()=> RootView(), 
      binding: RootBinding(),
    ),
  ];
}